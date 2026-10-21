.class final Lcom/google/android/gms/internal/cast/zzva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzvi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/cast/zzvi<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:Lcom/google/android/gms/internal/cast/zzux;

.field private final zzf:Z

.field private final zzg:[I

.field private final zzh:I

.field private final zzi:Lcom/google/android/gms/internal/cast/zzul;

.field private final zzj:Lcom/google/android/gms/internal/cast/zzvz;

.field private final zzk:Lcom/google/android/gms/internal/cast/zztf;

.field private final zzl:Lcom/google/android/gms/internal/cast/zzvc;

.field private final zzm:Lcom/google/android/gms/internal/cast/zzus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/internal/cast/zzva;->zza:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzwj;->zzg()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/cast/zzux;IZ[IIILcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzd:[Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/cast/zztf;->zzc(Lcom/google/android/gms/internal/cast/zzux;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/cast/zzva;->zzg:[I

    iput p9, p0, Lcom/google/android/gms/internal/cast/zzva;->zzh:I

    iput-object p11, p0, Lcom/google/android/gms/internal/cast/zzva;->zzl:Lcom/google/android/gms/internal/cast/zzvc;

    iput-object p12, p0, Lcom/google/android/gms/internal/cast/zzva;->zzi:Lcom/google/android/gms/internal/cast/zzul;

    iput-object p13, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    iput-object p14, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzva;->zze:Lcom/google/android/gms/internal/cast/zzux;

    iput-object p15, p0, Lcom/google/android/gms/internal/cast/zzva;->zzm:Lcom/google/android/gms/internal/cast/zzus;

    return-void
.end method

.method private static zzA(Ljava/lang/Object;ILcom/google/android/gms/internal/cast/zzvi;)Z
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    int-to-long v0, p1

    .line 6
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/cast/zzvi;->zzh(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static zzB(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/cast/zztp;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/cast/zztp;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztp;->zzK()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private final zzC(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzm(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method private static zzD(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final zzE(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/cast/zzwq;->zzD(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/cast/zzsu;

    .line 12
    .line 13
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/cast/zzwq;->zzd(ILcom/google/android/gms/internal/cast/zzsu;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzuu;Lcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)Lcom/google/android/gms/internal/cast/zzva;
    .locals 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zzvh;

    .line 4
    .line 5
    if-eqz v1, :cond_37

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/cast/zzvh;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzvh;->zzd()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const v5, 0xd800

    .line 23
    .line 24
    .line 25
    if-lt v4, v5, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-lt v4, v5, :cond_1

    .line 35
    .line 36
    move v4, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v7, 0x1

    .line 39
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 40
    .line 41
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-lt v7, v5, :cond_3

    .line 46
    .line 47
    and-int/lit16 v7, v7, 0x1fff

    .line 48
    .line 49
    const/16 v9, 0xd

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-lt v4, v5, :cond_2

    .line 58
    .line 59
    and-int/lit16 v4, v4, 0x1fff

    .line 60
    .line 61
    shl-int/2addr v4, v9

    .line 62
    or-int/2addr v7, v4

    .line 63
    add-int/lit8 v9, v9, 0xd

    .line 64
    .line 65
    move v4, v10

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    shl-int/2addr v4, v9

    .line 68
    or-int/2addr v7, v4

    .line 69
    move v4, v10

    .line 70
    :cond_3
    if-nez v7, :cond_4

    .line 71
    .line 72
    sget-object v7, Lcom/google/android/gms/internal/cast/zzva;->zza:[I

    .line 73
    .line 74
    move v9, v3

    .line 75
    move v11, v9

    .line 76
    move v12, v11

    .line 77
    move v13, v12

    .line 78
    move/from16 v16, v13

    .line 79
    .line 80
    move/from16 v18, v16

    .line 81
    .line 82
    move-object/from16 v17, v7

    .line 83
    .line 84
    move/from16 v7, v18

    .line 85
    .line 86
    goto/16 :goto_a

    .line 87
    .line 88
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-lt v4, v5, :cond_6

    .line 95
    .line 96
    and-int/lit16 v4, v4, 0x1fff

    .line 97
    .line 98
    const/16 v9, 0xd

    .line 99
    .line 100
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 101
    .line 102
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-lt v7, v5, :cond_5

    .line 107
    .line 108
    and-int/lit16 v7, v7, 0x1fff

    .line 109
    .line 110
    shl-int/2addr v7, v9

    .line 111
    or-int/2addr v4, v7

    .line 112
    add-int/lit8 v9, v9, 0xd

    .line 113
    .line 114
    move v7, v10

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    shl-int/2addr v7, v9

    .line 117
    or-int/2addr v4, v7

    .line 118
    move v7, v10

    .line 119
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 120
    .line 121
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-lt v7, v5, :cond_8

    .line 126
    .line 127
    and-int/lit16 v7, v7, 0x1fff

    .line 128
    .line 129
    const/16 v10, 0xd

    .line 130
    .line 131
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 132
    .line 133
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-lt v9, v5, :cond_7

    .line 138
    .line 139
    and-int/lit16 v9, v9, 0x1fff

    .line 140
    .line 141
    shl-int/2addr v9, v10

    .line 142
    or-int/2addr v7, v9

    .line 143
    add-int/lit8 v10, v10, 0xd

    .line 144
    .line 145
    move v9, v11

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    shl-int/2addr v9, v10

    .line 148
    or-int/2addr v7, v9

    .line 149
    move v9, v11

    .line 150
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 151
    .line 152
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-lt v9, v5, :cond_a

    .line 157
    .line 158
    and-int/lit16 v9, v9, 0x1fff

    .line 159
    .line 160
    const/16 v11, 0xd

    .line 161
    .line 162
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 163
    .line 164
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-lt v10, v5, :cond_9

    .line 169
    .line 170
    and-int/lit16 v10, v10, 0x1fff

    .line 171
    .line 172
    shl-int/2addr v10, v11

    .line 173
    or-int/2addr v9, v10

    .line 174
    add-int/lit8 v11, v11, 0xd

    .line 175
    .line 176
    move v10, v12

    .line 177
    goto :goto_4

    .line 178
    :cond_9
    shl-int/2addr v10, v11

    .line 179
    or-int/2addr v9, v10

    .line 180
    move v10, v12

    .line 181
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 182
    .line 183
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-lt v10, v5, :cond_c

    .line 188
    .line 189
    and-int/lit16 v10, v10, 0x1fff

    .line 190
    .line 191
    const/16 v12, 0xd

    .line 192
    .line 193
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 194
    .line 195
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    if-lt v11, v5, :cond_b

    .line 200
    .line 201
    and-int/lit16 v11, v11, 0x1fff

    .line 202
    .line 203
    shl-int/2addr v11, v12

    .line 204
    or-int/2addr v10, v11

    .line 205
    add-int/lit8 v12, v12, 0xd

    .line 206
    .line 207
    move v11, v13

    .line 208
    goto :goto_5

    .line 209
    :cond_b
    shl-int/2addr v11, v12

    .line 210
    or-int/2addr v10, v11

    .line 211
    move v11, v13

    .line 212
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 213
    .line 214
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-lt v11, v5, :cond_e

    .line 219
    .line 220
    and-int/lit16 v11, v11, 0x1fff

    .line 221
    .line 222
    const/16 v13, 0xd

    .line 223
    .line 224
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 225
    .line 226
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    if-lt v12, v5, :cond_d

    .line 231
    .line 232
    and-int/lit16 v12, v12, 0x1fff

    .line 233
    .line 234
    shl-int/2addr v12, v13

    .line 235
    or-int/2addr v11, v12

    .line 236
    add-int/lit8 v13, v13, 0xd

    .line 237
    .line 238
    move v12, v14

    .line 239
    goto :goto_6

    .line 240
    :cond_d
    shl-int/2addr v12, v13

    .line 241
    or-int/2addr v11, v12

    .line 242
    move v12, v14

    .line 243
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 244
    .line 245
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    if-lt v12, v5, :cond_10

    .line 250
    .line 251
    and-int/lit16 v12, v12, 0x1fff

    .line 252
    .line 253
    const/16 v14, 0xd

    .line 254
    .line 255
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 256
    .line 257
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    if-lt v13, v5, :cond_f

    .line 262
    .line 263
    and-int/lit16 v13, v13, 0x1fff

    .line 264
    .line 265
    shl-int/2addr v13, v14

    .line 266
    or-int/2addr v12, v13

    .line 267
    add-int/lit8 v14, v14, 0xd

    .line 268
    .line 269
    move v13, v15

    .line 270
    goto :goto_7

    .line 271
    :cond_f
    shl-int/2addr v13, v14

    .line 272
    or-int/2addr v12, v13

    .line 273
    move v13, v15

    .line 274
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 275
    .line 276
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-lt v13, v5, :cond_12

    .line 281
    .line 282
    and-int/lit16 v13, v13, 0x1fff

    .line 283
    .line 284
    const/16 v15, 0xd

    .line 285
    .line 286
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 287
    .line 288
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-lt v14, v5, :cond_11

    .line 293
    .line 294
    and-int/lit16 v14, v14, 0x1fff

    .line 295
    .line 296
    shl-int/2addr v14, v15

    .line 297
    or-int/2addr v13, v14

    .line 298
    add-int/lit8 v15, v15, 0xd

    .line 299
    .line 300
    move/from16 v14, v16

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_11
    shl-int/2addr v14, v15

    .line 304
    or-int/2addr v13, v14

    .line 305
    move/from16 v14, v16

    .line 306
    .line 307
    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 308
    .line 309
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    if-lt v14, v5, :cond_14

    .line 314
    .line 315
    and-int/lit16 v14, v14, 0x1fff

    .line 316
    .line 317
    const/16 v16, 0xd

    .line 318
    .line 319
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 320
    .line 321
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    if-lt v15, v5, :cond_13

    .line 326
    .line 327
    and-int/lit16 v15, v15, 0x1fff

    .line 328
    .line 329
    shl-int v15, v15, v16

    .line 330
    .line 331
    or-int/2addr v14, v15

    .line 332
    add-int/lit8 v16, v16, 0xd

    .line 333
    .line 334
    move/from16 v15, v17

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_13
    shl-int v15, v15, v16

    .line 338
    .line 339
    or-int/2addr v14, v15

    .line 340
    move/from16 v15, v17

    .line 341
    .line 342
    :cond_14
    add-int v16, v14, v12

    .line 343
    .line 344
    add-int v13, v16, v13

    .line 345
    .line 346
    add-int v16, v4, v4

    .line 347
    .line 348
    add-int v16, v16, v7

    .line 349
    .line 350
    new-array v7, v13, [I

    .line 351
    .line 352
    move v13, v12

    .line 353
    move v12, v9

    .line 354
    move v9, v13

    .line 355
    move-object/from16 v17, v7

    .line 356
    .line 357
    move v13, v10

    .line 358
    move/from16 v18, v14

    .line 359
    .line 360
    move v7, v4

    .line 361
    move v4, v15

    .line 362
    :goto_a
    sget-object v10, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzvh;->zze()[Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v14

    .line 368
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzvh;->zza()Lcom/google/android/gms/internal/cast/zzux;

    .line 369
    .line 370
    .line 371
    move-result-object v15

    .line 372
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    move-result-object v15

    .line 376
    add-int v19, v18, v9

    .line 377
    .line 378
    add-int v9, v11, v11

    .line 379
    .line 380
    mul-int/lit8 v11, v11, 0x3

    .line 381
    .line 382
    new-array v11, v11, [I

    .line 383
    .line 384
    new-array v9, v9, [Ljava/lang/Object;

    .line 385
    .line 386
    move/from16 v20, v3

    .line 387
    .line 388
    move/from16 v21, v20

    .line 389
    .line 390
    move/from16 v22, v18

    .line 391
    .line 392
    move/from16 v23, v19

    .line 393
    .line 394
    :goto_b
    if-ge v4, v2, :cond_36

    .line 395
    .line 396
    add-int/lit8 v24, v4, 0x1

    .line 397
    .line 398
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-lt v4, v5, :cond_16

    .line 403
    .line 404
    and-int/lit16 v4, v4, 0x1fff

    .line 405
    .line 406
    move/from16 v3, v24

    .line 407
    .line 408
    const/16 v24, 0xd

    .line 409
    .line 410
    :goto_c
    add-int/lit8 v25, v3, 0x1

    .line 411
    .line 412
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-lt v3, v5, :cond_15

    .line 417
    .line 418
    and-int/lit16 v3, v3, 0x1fff

    .line 419
    .line 420
    shl-int v3, v3, v24

    .line 421
    .line 422
    or-int/2addr v4, v3

    .line 423
    add-int/lit8 v24, v24, 0xd

    .line 424
    .line 425
    move/from16 v3, v25

    .line 426
    .line 427
    goto :goto_c

    .line 428
    :cond_15
    shl-int v3, v3, v24

    .line 429
    .line 430
    or-int/2addr v4, v3

    .line 431
    move/from16 v3, v25

    .line 432
    .line 433
    goto :goto_d

    .line 434
    :cond_16
    move/from16 v3, v24

    .line 435
    .line 436
    :goto_d
    add-int/lit8 v24, v3, 0x1

    .line 437
    .line 438
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    if-lt v3, v5, :cond_18

    .line 443
    .line 444
    and-int/lit16 v3, v3, 0x1fff

    .line 445
    .line 446
    move/from16 v8, v24

    .line 447
    .line 448
    const/16 v24, 0xd

    .line 449
    .line 450
    :goto_e
    add-int/lit8 v25, v8, 0x1

    .line 451
    .line 452
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    if-lt v8, v5, :cond_17

    .line 457
    .line 458
    and-int/lit16 v8, v8, 0x1fff

    .line 459
    .line 460
    shl-int v8, v8, v24

    .line 461
    .line 462
    or-int/2addr v3, v8

    .line 463
    add-int/lit8 v24, v24, 0xd

    .line 464
    .line 465
    move/from16 v8, v25

    .line 466
    .line 467
    goto :goto_e

    .line 468
    :cond_17
    shl-int v8, v8, v24

    .line 469
    .line 470
    or-int/2addr v3, v8

    .line 471
    move/from16 v8, v25

    .line 472
    .line 473
    goto :goto_f

    .line 474
    :cond_18
    move/from16 v8, v24

    .line 475
    .line 476
    :goto_f
    and-int/lit16 v6, v3, 0x400

    .line 477
    .line 478
    if-eqz v6, :cond_19

    .line 479
    .line 480
    add-int/lit8 v6, v20, 0x1

    .line 481
    .line 482
    aput v21, v17, v20

    .line 483
    .line 484
    move/from16 v20, v6

    .line 485
    .line 486
    :cond_19
    and-int/lit16 v6, v3, 0xff

    .line 487
    .line 488
    and-int/lit16 v5, v3, 0x800

    .line 489
    .line 490
    move-object/from16 v26, v0

    .line 491
    .line 492
    const/16 v0, 0x33

    .line 493
    .line 494
    if-lt v6, v0, :cond_23

    .line 495
    .line 496
    add-int/lit8 v0, v8, 0x1

    .line 497
    .line 498
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    move/from16 v27, v0

    .line 503
    .line 504
    const v0, 0xd800

    .line 505
    .line 506
    .line 507
    if-lt v8, v0, :cond_1b

    .line 508
    .line 509
    and-int/lit16 v8, v8, 0x1fff

    .line 510
    .line 511
    move/from16 v30, v27

    .line 512
    .line 513
    move/from16 v27, v8

    .line 514
    .line 515
    move/from16 v8, v30

    .line 516
    .line 517
    const/16 v30, 0xd

    .line 518
    .line 519
    :goto_10
    add-int/lit8 v31, v8, 0x1

    .line 520
    .line 521
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 522
    .line 523
    .line 524
    move-result v8

    .line 525
    if-lt v8, v0, :cond_1a

    .line 526
    .line 527
    and-int/lit16 v0, v8, 0x1fff

    .line 528
    .line 529
    shl-int v0, v0, v30

    .line 530
    .line 531
    or-int v27, v27, v0

    .line 532
    .line 533
    add-int/lit8 v30, v30, 0xd

    .line 534
    .line 535
    move/from16 v8, v31

    .line 536
    .line 537
    const v0, 0xd800

    .line 538
    .line 539
    .line 540
    goto :goto_10

    .line 541
    :cond_1a
    shl-int v0, v8, v30

    .line 542
    .line 543
    or-int v8, v27, v0

    .line 544
    .line 545
    move/from16 v0, v31

    .line 546
    .line 547
    goto :goto_11

    .line 548
    :cond_1b
    move/from16 v0, v27

    .line 549
    .line 550
    :goto_11
    move/from16 v27, v0

    .line 551
    .line 552
    add-int/lit8 v0, v6, -0x33

    .line 553
    .line 554
    move/from16 v30, v2

    .line 555
    .line 556
    const/16 v2, 0x9

    .line 557
    .line 558
    if-eq v0, v2, :cond_1c

    .line 559
    .line 560
    const/16 v2, 0x11

    .line 561
    .line 562
    if-ne v0, v2, :cond_1d

    .line 563
    .line 564
    :cond_1c
    const/4 v2, 0x1

    .line 565
    goto :goto_14

    .line 566
    :cond_1d
    const/16 v2, 0xc

    .line 567
    .line 568
    if-ne v0, v2, :cond_20

    .line 569
    .line 570
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/cast/zzvh;->zzc()I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    const/4 v2, 0x1

    .line 575
    if-eq v0, v2, :cond_1f

    .line 576
    .line 577
    if-eqz v5, :cond_1e

    .line 578
    .line 579
    goto :goto_12

    .line 580
    :cond_1e
    const/4 v5, 0x0

    .line 581
    goto :goto_15

    .line 582
    :cond_1f
    :goto_12
    add-int/lit8 v0, v16, 0x1

    .line 583
    .line 584
    div-int/lit8 v24, v21, 0x3

    .line 585
    .line 586
    add-int v24, v24, v24

    .line 587
    .line 588
    add-int/lit8 v24, v24, 0x1

    .line 589
    .line 590
    aget-object v16, v14, v16

    .line 591
    .line 592
    aput-object v16, v9, v24

    .line 593
    .line 594
    :goto_13
    move/from16 v16, v0

    .line 595
    .line 596
    goto :goto_15

    .line 597
    :goto_14
    add-int/lit8 v0, v16, 0x1

    .line 598
    .line 599
    div-int/lit8 v24, v21, 0x3

    .line 600
    .line 601
    add-int v24, v24, v24

    .line 602
    .line 603
    add-int/lit8 v28, v24, 0x1

    .line 604
    .line 605
    aget-object v2, v14, v16

    .line 606
    .line 607
    aput-object v2, v9, v28

    .line 608
    .line 609
    goto :goto_13

    .line 610
    :cond_20
    :goto_15
    add-int/2addr v8, v8

    .line 611
    aget-object v0, v14, v8

    .line 612
    .line 613
    instance-of v2, v0, Ljava/lang/reflect/Field;

    .line 614
    .line 615
    if-eqz v2, :cond_21

    .line 616
    .line 617
    check-cast v0, Ljava/lang/reflect/Field;

    .line 618
    .line 619
    :goto_16
    move v2, v4

    .line 620
    move/from16 v28, v5

    .line 621
    .line 622
    goto :goto_17

    .line 623
    :cond_21
    check-cast v0, Ljava/lang/String;

    .line 624
    .line 625
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    aput-object v0, v14, v8

    .line 630
    .line 631
    goto :goto_16

    .line 632
    :goto_17
    invoke-virtual {v10, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 633
    .line 634
    .line 635
    move-result-wide v4

    .line 636
    long-to-int v0, v4

    .line 637
    add-int/lit8 v8, v8, 0x1

    .line 638
    .line 639
    aget-object v4, v14, v8

    .line 640
    .line 641
    instance-of v5, v4, Ljava/lang/reflect/Field;

    .line 642
    .line 643
    if-eqz v5, :cond_22

    .line 644
    .line 645
    check-cast v4, Ljava/lang/reflect/Field;

    .line 646
    .line 647
    goto :goto_18

    .line 648
    :cond_22
    check-cast v4, Ljava/lang/String;

    .line 649
    .line 650
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/cast/zzva;->zzs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    aput-object v4, v14, v8

    .line 655
    .line 656
    :goto_18
    invoke-virtual {v10, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 657
    .line 658
    .line 659
    move-result-wide v4

    .line 660
    long-to-int v4, v4

    .line 661
    move-object/from16 v29, v1

    .line 662
    .line 663
    move/from16 v25, v27

    .line 664
    .line 665
    move/from16 v5, v28

    .line 666
    .line 667
    const/4 v8, 0x0

    .line 668
    move/from16 v28, v2

    .line 669
    .line 670
    goto/16 :goto_26

    .line 671
    .line 672
    :cond_23
    move/from16 v30, v2

    .line 673
    .line 674
    move v2, v4

    .line 675
    add-int/lit8 v0, v16, 0x1

    .line 676
    .line 677
    aget-object v4, v14, v16

    .line 678
    .line 679
    check-cast v4, Ljava/lang/String;

    .line 680
    .line 681
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/cast/zzva;->zzs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    move/from16 v27, v0

    .line 686
    .line 687
    const/16 v0, 0x9

    .line 688
    .line 689
    if-eq v6, v0, :cond_24

    .line 690
    .line 691
    const/16 v0, 0x11

    .line 692
    .line 693
    if-ne v6, v0, :cond_25

    .line 694
    .line 695
    :cond_24
    move/from16 v28, v2

    .line 696
    .line 697
    const/4 v2, 0x1

    .line 698
    goto/16 :goto_1e

    .line 699
    .line 700
    :cond_25
    const/16 v0, 0x1b

    .line 701
    .line 702
    if-eq v6, v0, :cond_2d

    .line 703
    .line 704
    const/16 v0, 0x31

    .line 705
    .line 706
    if-ne v6, v0, :cond_26

    .line 707
    .line 708
    add-int/lit8 v16, v16, 0x2

    .line 709
    .line 710
    move/from16 v28, v2

    .line 711
    .line 712
    const/4 v2, 0x1

    .line 713
    goto/16 :goto_1d

    .line 714
    .line 715
    :cond_26
    const/16 v0, 0xc

    .line 716
    .line 717
    if-eq v6, v0, :cond_2a

    .line 718
    .line 719
    const/16 v0, 0x1e

    .line 720
    .line 721
    if-eq v6, v0, :cond_2a

    .line 722
    .line 723
    const/16 v0, 0x2c

    .line 724
    .line 725
    if-ne v6, v0, :cond_27

    .line 726
    .line 727
    goto :goto_1a

    .line 728
    :cond_27
    const/16 v0, 0x32

    .line 729
    .line 730
    if-ne v6, v0, :cond_29

    .line 731
    .line 732
    add-int/lit8 v0, v16, 0x2

    .line 733
    .line 734
    add-int/lit8 v28, v22, 0x1

    .line 735
    .line 736
    aput v21, v17, v22

    .line 737
    .line 738
    div-int/lit8 v22, v21, 0x3

    .line 739
    .line 740
    aget-object v27, v14, v27

    .line 741
    .line 742
    add-int v22, v22, v22

    .line 743
    .line 744
    aput-object v27, v9, v22

    .line 745
    .line 746
    if-eqz v5, :cond_28

    .line 747
    .line 748
    add-int/lit8 v22, v22, 0x1

    .line 749
    .line 750
    add-int/lit8 v16, v16, 0x3

    .line 751
    .line 752
    aget-object v0, v14, v0

    .line 753
    .line 754
    aput-object v0, v9, v22

    .line 755
    .line 756
    move/from16 v0, v16

    .line 757
    .line 758
    move/from16 v22, v28

    .line 759
    .line 760
    move/from16 v28, v2

    .line 761
    .line 762
    :goto_19
    move/from16 v16, v3

    .line 763
    .line 764
    goto :goto_20

    .line 765
    :cond_28
    move/from16 v16, v3

    .line 766
    .line 767
    move/from16 v22, v28

    .line 768
    .line 769
    const/4 v5, 0x0

    .line 770
    move/from16 v28, v2

    .line 771
    .line 772
    goto :goto_20

    .line 773
    :cond_29
    move/from16 v28, v2

    .line 774
    .line 775
    const/4 v2, 0x1

    .line 776
    goto :goto_1f

    .line 777
    :cond_2a
    :goto_1a
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/cast/zzvh;->zzc()I

    .line 778
    .line 779
    .line 780
    move-result v0

    .line 781
    move/from16 v28, v2

    .line 782
    .line 783
    const/4 v2, 0x1

    .line 784
    if-eq v0, v2, :cond_2c

    .line 785
    .line 786
    if-eqz v5, :cond_2b

    .line 787
    .line 788
    goto :goto_1b

    .line 789
    :cond_2b
    move/from16 v16, v3

    .line 790
    .line 791
    move/from16 v0, v27

    .line 792
    .line 793
    const/4 v5, 0x0

    .line 794
    goto :goto_20

    .line 795
    :cond_2c
    :goto_1b
    add-int/lit8 v16, v16, 0x2

    .line 796
    .line 797
    div-int/lit8 v0, v21, 0x3

    .line 798
    .line 799
    add-int/2addr v0, v0

    .line 800
    add-int/2addr v0, v2

    .line 801
    aget-object v24, v14, v27

    .line 802
    .line 803
    aput-object v24, v9, v0

    .line 804
    .line 805
    :goto_1c
    move/from16 v0, v16

    .line 806
    .line 807
    goto :goto_19

    .line 808
    :cond_2d
    move/from16 v28, v2

    .line 809
    .line 810
    const/4 v2, 0x1

    .line 811
    add-int/lit8 v16, v16, 0x2

    .line 812
    .line 813
    :goto_1d
    div-int/lit8 v0, v21, 0x3

    .line 814
    .line 815
    add-int/2addr v0, v0

    .line 816
    add-int/2addr v0, v2

    .line 817
    aget-object v24, v14, v27

    .line 818
    .line 819
    aput-object v24, v9, v0

    .line 820
    .line 821
    goto :goto_1c

    .line 822
    :goto_1e
    div-int/lit8 v0, v21, 0x3

    .line 823
    .line 824
    add-int/2addr v0, v0

    .line 825
    add-int/2addr v0, v2

    .line 826
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 827
    .line 828
    .line 829
    move-result-object v16

    .line 830
    aput-object v16, v9, v0

    .line 831
    .line 832
    :goto_1f
    move/from16 v16, v3

    .line 833
    .line 834
    move/from16 v0, v27

    .line 835
    .line 836
    :goto_20
    invoke-virtual {v10, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 837
    .line 838
    .line 839
    move-result-wide v2

    .line 840
    long-to-int v2, v2

    .line 841
    move/from16 v3, v16

    .line 842
    .line 843
    and-int/lit16 v4, v3, 0x1000

    .line 844
    .line 845
    const v16, 0xfffff

    .line 846
    .line 847
    .line 848
    if-eqz v4, :cond_31

    .line 849
    .line 850
    const/16 v4, 0x11

    .line 851
    .line 852
    if-gt v6, v4, :cond_31

    .line 853
    .line 854
    add-int/lit8 v4, v8, 0x1

    .line 855
    .line 856
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 857
    .line 858
    .line 859
    move-result v8

    .line 860
    move/from16 v27, v0

    .line 861
    .line 862
    const v0, 0xd800

    .line 863
    .line 864
    .line 865
    if-lt v8, v0, :cond_2f

    .line 866
    .line 867
    and-int/lit16 v8, v8, 0x1fff

    .line 868
    .line 869
    const/16 v16, 0xd

    .line 870
    .line 871
    :goto_21
    add-int/lit8 v25, v4, 0x1

    .line 872
    .line 873
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 874
    .line 875
    .line 876
    move-result v4

    .line 877
    if-lt v4, v0, :cond_2e

    .line 878
    .line 879
    and-int/lit16 v4, v4, 0x1fff

    .line 880
    .line 881
    shl-int v4, v4, v16

    .line 882
    .line 883
    or-int/2addr v8, v4

    .line 884
    add-int/lit8 v16, v16, 0xd

    .line 885
    .line 886
    move/from16 v4, v25

    .line 887
    .line 888
    goto :goto_21

    .line 889
    :cond_2e
    shl-int v4, v4, v16

    .line 890
    .line 891
    or-int/2addr v8, v4

    .line 892
    goto :goto_22

    .line 893
    :cond_2f
    move/from16 v25, v4

    .line 894
    .line 895
    :goto_22
    add-int v4, v7, v7

    .line 896
    .line 897
    div-int/lit8 v16, v8, 0x20

    .line 898
    .line 899
    add-int v16, v16, v4

    .line 900
    .line 901
    aget-object v4, v14, v16

    .line 902
    .line 903
    instance-of v0, v4, Ljava/lang/reflect/Field;

    .line 904
    .line 905
    if-eqz v0, :cond_30

    .line 906
    .line 907
    check-cast v4, Ljava/lang/reflect/Field;

    .line 908
    .line 909
    :goto_23
    move-object/from16 v29, v1

    .line 910
    .line 911
    goto :goto_24

    .line 912
    :cond_30
    check-cast v4, Ljava/lang/String;

    .line 913
    .line 914
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/cast/zzva;->zzs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 915
    .line 916
    .line 917
    move-result-object v4

    .line 918
    aput-object v4, v14, v16

    .line 919
    .line 920
    goto :goto_23

    .line 921
    :goto_24
    invoke-virtual {v10, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 922
    .line 923
    .line 924
    move-result-wide v0

    .line 925
    long-to-int v0, v0

    .line 926
    rem-int/lit8 v8, v8, 0x20

    .line 927
    .line 928
    move v4, v0

    .line 929
    goto :goto_25

    .line 930
    :cond_31
    move/from16 v27, v0

    .line 931
    .line 932
    move-object/from16 v29, v1

    .line 933
    .line 934
    move/from16 v25, v8

    .line 935
    .line 936
    move/from16 v4, v16

    .line 937
    .line 938
    const/4 v8, 0x0

    .line 939
    :goto_25
    const/16 v0, 0x12

    .line 940
    .line 941
    if-lt v6, v0, :cond_32

    .line 942
    .line 943
    const/16 v0, 0x31

    .line 944
    .line 945
    if-gt v6, v0, :cond_32

    .line 946
    .line 947
    add-int/lit8 v0, v23, 0x1

    .line 948
    .line 949
    aput v2, v17, v23

    .line 950
    .line 951
    move/from16 v23, v0

    .line 952
    .line 953
    :cond_32
    move v0, v2

    .line 954
    move/from16 v16, v27

    .line 955
    .line 956
    :goto_26
    add-int/lit8 v1, v21, 0x1

    .line 957
    .line 958
    aput v28, v11, v21

    .line 959
    .line 960
    add-int/lit8 v2, v21, 0x2

    .line 961
    .line 962
    move/from16 v27, v0

    .line 963
    .line 964
    and-int/lit16 v0, v3, 0x200

    .line 965
    .line 966
    if-eqz v0, :cond_33

    .line 967
    .line 968
    const/high16 v0, 0x20000000

    .line 969
    .line 970
    goto :goto_27

    .line 971
    :cond_33
    const/4 v0, 0x0

    .line 972
    :goto_27
    and-int/lit16 v3, v3, 0x100

    .line 973
    .line 974
    if-eqz v3, :cond_34

    .line 975
    .line 976
    const/high16 v3, 0x10000000

    .line 977
    .line 978
    goto :goto_28

    .line 979
    :cond_34
    const/4 v3, 0x0

    .line 980
    :goto_28
    if-eqz v5, :cond_35

    .line 981
    .line 982
    const/high16 v5, -0x80000000

    .line 983
    .line 984
    goto :goto_29

    .line 985
    :cond_35
    const/4 v5, 0x0

    .line 986
    :goto_29
    shl-int/lit8 v6, v6, 0x14

    .line 987
    .line 988
    or-int/2addr v0, v3

    .line 989
    or-int/2addr v0, v5

    .line 990
    or-int/2addr v0, v6

    .line 991
    or-int v0, v0, v27

    .line 992
    .line 993
    aput v0, v11, v1

    .line 994
    .line 995
    add-int/lit8 v21, v21, 0x3

    .line 996
    .line 997
    shl-int/lit8 v0, v8, 0x14

    .line 998
    .line 999
    or-int/2addr v0, v4

    .line 1000
    aput v0, v11, v2

    .line 1001
    .line 1002
    move/from16 v4, v25

    .line 1003
    .line 1004
    move-object/from16 v0, v26

    .line 1005
    .line 1006
    move-object/from16 v1, v29

    .line 1007
    .line 1008
    move/from16 v2, v30

    .line 1009
    .line 1010
    const/4 v3, 0x0

    .line 1011
    const v5, 0xd800

    .line 1012
    .line 1013
    .line 1014
    goto/16 :goto_b

    .line 1015
    .line 1016
    :cond_36
    move-object/from16 v26, v0

    .line 1017
    .line 1018
    new-instance v0, Lcom/google/android/gms/internal/cast/zzva;

    .line 1019
    .line 1020
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/cast/zzvh;->zza()Lcom/google/android/gms/internal/cast/zzux;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v14

    .line 1024
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/cast/zzvh;->zzc()I

    .line 1025
    .line 1026
    .line 1027
    move-result v15

    .line 1028
    const/16 v16, 0x0

    .line 1029
    .line 1030
    move-object/from16 v20, p2

    .line 1031
    .line 1032
    move-object/from16 v21, p3

    .line 1033
    .line 1034
    move-object/from16 v22, p4

    .line 1035
    .line 1036
    move-object/from16 v23, p5

    .line 1037
    .line 1038
    move-object/from16 v24, p6

    .line 1039
    .line 1040
    move-object v10, v11

    .line 1041
    move-object v11, v9

    .line 1042
    move-object v9, v0

    .line 1043
    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/cast/zzva;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/cast/zzux;IZ[IIILcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)V

    .line 1044
    .line 1045
    .line 1046
    return-object v9

    .line 1047
    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/cast/zzvw;

    .line 1048
    .line 1049
    const/4 v0, 0x0

    .line 1050
    throw v0
.end method

.method private static zzj(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Double;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private static zzk(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static zzl(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final zzm(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method private static zzn(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzo(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method private static zzp(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private final zzq(I)Lcom/google/android/gms/internal/cast/zzvi;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzd:[Ljava/lang/Object;

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object v1, v0, p1

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/cast/zzvi;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvf;->zza()Lcom/google/android/gms/internal/cast/zzvf;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zzvf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzd:[Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v0, v1, p1

    .line 30
    .line 31
    return-object v0
.end method

.method private final zzr(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzd:[Ljava/lang/Object;

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    return-object p1
.end method

.method private static zzs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "Field "

    .line 41
    .line 42
    const-string v3, " for "

    .line 43
    .line 44
    const-string v4, " not found. Known fields are "

    .line 45
    .line 46
    invoke-static {v2, p1, v3, p0, v4}, LA/i;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method

.method private final zzt(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 17
    .line 18
    int-to-long v2, v0

    .line 19
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/cast/zzvi;->zzc()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p3}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p2}, Lcom/google/android/gms/internal/cast/zzvi;->zzc()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p3, v4

    .line 80
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 85
    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    aget p1, p1, p3

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance p3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Source subfield "

    .line 97
    .line 98
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " is present but null: "

    .line 105
    .line 106
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0
.end method

.method private final zzu(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 2
    .line 3
    aget v0, v0, p3

    .line 4
    .line 5
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v1, v2

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 21
    .line 22
    int-to-long v3, v1

    .line 23
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/cast/zzvi;->zzc()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzw(Ljava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {p3}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-interface {p2}, Lcom/google/android/gms/internal/cast/zzvi;->zzc()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p3, v0

    .line 84
    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 89
    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    aget p1, p1, p3

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "Source subfield "

    .line 101
    .line 102
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, " is present but null: "

    .line 109
    .line 110
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0
.end method

.method private final zzv(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzva;->zzm(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, p2

    .line 9
    int-to-long v0, v0

    .line 10
    const-wide/32 v2, 0xfffff

    .line 11
    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    shl-int p2, v3, p2

    .line 26
    .line 27
    or-int/2addr p2, v2

    .line 28
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final zzw(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzm(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method private final zzy(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzva;->zzm(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int v2, v0, v1

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    const-wide/32 v4, 0xfffff

    .line 12
    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-nez v4, :cond_14

    .line 19
    .line 20
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    and-int v0, p2, v1

    .line 25
    .line 26
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    int-to-long v0, v0

    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    packed-switch p2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    return v6

    .line 49
    :cond_0
    return v5

    .line 50
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    cmp-long p1, p1, v2

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    return v6

    .line 59
    :cond_1
    return v5

    .line 60
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    return v6

    .line 67
    :cond_2
    return v5

    .line 68
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    cmp-long p1, p1, v2

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    return v6

    .line 77
    :cond_3
    return v5

    .line 78
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    return v6

    .line 85
    :cond_4
    return v5

    .line 86
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    return v6

    .line 93
    :cond_5
    return v5

    .line 94
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    return v6

    .line 101
    :cond_6
    return v5

    .line 102
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/cast/zzsu;->zzb:Lcom/google/android/gms/internal/cast/zzsu;

    .line 103
    .line 104
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzsu;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_7

    .line 113
    .line 114
    return v6

    .line 115
    :cond_7
    return v5

    .line 116
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_8

    .line 121
    .line 122
    return v6

    .line 123
    :cond_8
    return v5

    .line 124
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    instance-of p2, p1, Ljava/lang/String;

    .line 129
    .line 130
    if-eqz p2, :cond_a

    .line 131
    .line 132
    check-cast p1, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_9

    .line 139
    .line 140
    return v6

    .line 141
    :cond_9
    return v5

    .line 142
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/cast/zzsu;

    .line 143
    .line 144
    if-eqz p2, :cond_c

    .line 145
    .line 146
    sget-object p2, Lcom/google/android/gms/internal/cast/zzsu;->zzb:Lcom/google/android/gms/internal/cast/zzsu;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzsu;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_b

    .line 153
    .line 154
    return v6

    .line 155
    :cond_b
    return v5

    .line 156
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    return p1

    .line 167
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_d

    .line 172
    .line 173
    return v6

    .line 174
    :cond_d
    return v5

    .line 175
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 176
    .line 177
    .line 178
    move-result-wide p1

    .line 179
    cmp-long p1, p1, v2

    .line 180
    .line 181
    if-eqz p1, :cond_e

    .line 182
    .line 183
    return v6

    .line 184
    :cond_e
    return v5

    .line 185
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_f

    .line 190
    .line 191
    return v6

    .line 192
    :cond_f
    return v5

    .line 193
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 194
    .line 195
    .line 196
    move-result-wide p1

    .line 197
    cmp-long p1, p1, v2

    .line 198
    .line 199
    if-eqz p1, :cond_10

    .line 200
    .line 201
    return v6

    .line 202
    :cond_10
    return v5

    .line 203
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 204
    .line 205
    .line 206
    move-result-wide p1

    .line 207
    cmp-long p1, p1, v2

    .line 208
    .line 209
    if-eqz p1, :cond_11

    .line 210
    .line 211
    return v6

    .line 212
    :cond_11
    return v5

    .line 213
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_12

    .line 222
    .line 223
    return v6

    .line 224
    :cond_12
    return v5

    .line 225
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    .line 226
    .line 227
    .line 228
    move-result-wide p1

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 230
    .line 231
    .line 232
    move-result-wide p1

    .line 233
    cmp-long p1, p1, v2

    .line 234
    .line 235
    if-eqz p1, :cond_13

    .line 236
    .line 237
    return v6

    .line 238
    :cond_13
    return v5

    .line 239
    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    .line 240
    .line 241
    shl-int p2, v6, p2

    .line 242
    .line 243
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    and-int/2addr p1, p2

    .line 248
    if-eqz p1, :cond_15

    .line 249
    .line 250
    return v6

    .line 251
    :cond_15
    return v5

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
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

.method private final zzz(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    and-int p1, p4, p5

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v6, 0x1

    .line 6
    sget-object v7, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const v9, 0xfffff

    .line 10
    .line 11
    .line 12
    move v2, v8

    .line 13
    move v4, v2

    .line 14
    move v10, v4

    .line 15
    move v3, v9

    .line 16
    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 17
    .line 18
    array-length v5, v5

    .line 19
    if-ge v2, v5, :cond_1d

    .line 20
    .line 21
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    iget-object v13, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 30
    .line 31
    add-int/lit8 v14, v2, 0x2

    .line 32
    .line 33
    aget v15, v13, v2

    .line 34
    .line 35
    aget v13, v13, v14

    .line 36
    .line 37
    and-int v14, v13, v9

    .line 38
    .line 39
    const/16 v16, 0x0

    .line 40
    .line 41
    const/16 v11, 0x11

    .line 42
    .line 43
    if-gt v12, v11, :cond_2

    .line 44
    .line 45
    if-eq v14, v3, :cond_1

    .line 46
    .line 47
    if-ne v14, v9, :cond_0

    .line 48
    .line 49
    move v4, v8

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    int-to-long v3, v14

    .line 52
    invoke-virtual {v7, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    move v4, v3

    .line 57
    :goto_1
    move v3, v14

    .line 58
    :cond_1
    ushr-int/lit8 v11, v13, 0x14

    .line 59
    .line 60
    shl-int v11, v6, v11

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v11, v8

    .line 64
    :goto_2
    and-int/2addr v5, v9

    .line 65
    sget-object v13, Lcom/google/android/gms/internal/cast/zztk;->zzJ:Lcom/google/android/gms/internal/cast/zztk;

    .line 66
    .line 67
    invoke-virtual {v13}, Lcom/google/android/gms/internal/cast/zztk;->zza()I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    if-lt v12, v13, :cond_3

    .line 72
    .line 73
    sget-object v13, Lcom/google/android/gms/internal/cast/zztk;->zzW:Lcom/google/android/gms/internal/cast/zztk;

    .line 74
    .line 75
    invoke-virtual {v13}, Lcom/google/android/gms/internal/cast/zztk;->zza()I

    .line 76
    .line 77
    .line 78
    :cond_3
    int-to-long v13, v5

    .line 79
    const/16 v17, 0x3f

    .line 80
    .line 81
    const/4 v5, 0x4

    .line 82
    const/16 v9, 0x8

    .line 83
    .line 84
    packed-switch v12, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    goto/16 :goto_18

    .line 88
    .line 89
    :pswitch_0
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_1c

    .line 94
    .line 95
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Lcom/google/android/gms/internal/cast/zzux;

    .line 100
    .line 101
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-static {v15, v5, v9}, Lcom/google/android/gms/internal/cast/zztc;->zzt(ILcom/google/android/gms/internal/cast/zzux;Lcom/google/android/gms/internal/cast/zzvi;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    :goto_3
    add-int/2addr v10, v5

    .line 110
    goto/16 :goto_18

    .line 111
    .line 112
    :pswitch_1
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_1c

    .line 117
    .line 118
    shl-int/lit8 v5, v15, 0x3

    .line 119
    .line 120
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v11

    .line 124
    add-long v13, v11, v11

    .line 125
    .line 126
    shr-long v11, v11, v17

    .line 127
    .line 128
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    xor-long/2addr v11, v13

    .line 133
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    :goto_4
    add-int/2addr v9, v5

    .line 138
    add-int/2addr v10, v9

    .line 139
    goto/16 :goto_18

    .line 140
    .line 141
    :pswitch_2
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_1c

    .line 146
    .line 147
    shl-int/lit8 v5, v15, 0x3

    .line 148
    .line 149
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    add-int v11, v9, v9

    .line 154
    .line 155
    shr-int/lit8 v9, v9, 0x1f

    .line 156
    .line 157
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    xor-int/2addr v9, v11

    .line 162
    invoke-static {v9, v5, v10}, Lb/c;->b(III)I

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    goto/16 :goto_18

    .line 167
    .line 168
    :pswitch_3
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_1c

    .line 173
    .line 174
    shl-int/lit8 v5, v15, 0x3

    .line 175
    .line 176
    invoke-static {v5, v9, v10}, Lb/c;->b(III)I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    goto/16 :goto_18

    .line 181
    .line 182
    :pswitch_4
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-eqz v9, :cond_1c

    .line 187
    .line 188
    shl-int/lit8 v9, v15, 0x3

    .line 189
    .line 190
    invoke-static {v9, v5, v10}, Lb/c;->b(III)I

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    goto/16 :goto_18

    .line 195
    .line 196
    :pswitch_5
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_1c

    .line 201
    .line 202
    shl-int/lit8 v5, v15, 0x3

    .line 203
    .line 204
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    invoke-static {v5, v9, v10}, Lb/c;->b(III)I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    goto/16 :goto_18

    .line 217
    .line 218
    :pswitch_6
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-eqz v5, :cond_1c

    .line 223
    .line 224
    shl-int/lit8 v5, v15, 0x3

    .line 225
    .line 226
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    invoke-static {v5, v9, v10}, Lb/c;->b(III)I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    goto/16 :goto_18

    .line 239
    .line 240
    :pswitch_7
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-eqz v5, :cond_1c

    .line 245
    .line 246
    shl-int/lit8 v5, v15, 0x3

    .line 247
    .line 248
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    check-cast v9, Lcom/google/android/gms/internal/cast/zzsu;

    .line 253
    .line 254
    sget v11, Lcom/google/android/gms/internal/cast/zztc;->zzb:I

    .line 255
    .line 256
    invoke-virtual {v9}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    add-int/2addr v11, v9

    .line 265
    invoke-static {v5, v11, v10}, Lb/c;->b(III)I

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    goto/16 :goto_18

    .line 270
    .line 271
    :pswitch_8
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-eqz v5, :cond_1c

    .line 276
    .line 277
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    invoke-static {v15, v5, v9}, Lcom/google/android/gms/internal/cast/zzvk;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    :goto_5
    add-int/2addr v10, v5

    .line 290
    goto/16 :goto_18

    .line 291
    .line 292
    :pswitch_9
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-eqz v5, :cond_1c

    .line 297
    .line 298
    shl-int/lit8 v5, v15, 0x3

    .line 299
    .line 300
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    instance-of v11, v9, Lcom/google/android/gms/internal/cast/zzsu;

    .line 305
    .line 306
    if-eqz v11, :cond_4

    .line 307
    .line 308
    check-cast v9, Lcom/google/android/gms/internal/cast/zzsu;

    .line 309
    .line 310
    sget v11, Lcom/google/android/gms/internal/cast/zztc;->zzb:I

    .line 311
    .line 312
    invoke-virtual {v9}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 317
    .line 318
    .line 319
    move-result v11

    .line 320
    add-int/2addr v11, v9

    .line 321
    invoke-static {v5, v11, v10}, Lb/c;->b(III)I

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    goto/16 :goto_18

    .line 326
    .line 327
    :cond_4
    check-cast v9, Ljava/lang/String;

    .line 328
    .line 329
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzw(Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    move-result v9

    .line 333
    invoke-static {v5, v9, v10}, Lb/c;->b(III)I

    .line 334
    .line 335
    .line 336
    move-result v10

    .line 337
    goto/16 :goto_18

    .line 338
    .line 339
    :pswitch_a
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-eqz v5, :cond_1c

    .line 344
    .line 345
    shl-int/lit8 v5, v15, 0x3

    .line 346
    .line 347
    invoke-static {v5, v6, v10}, Lb/c;->b(III)I

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    goto/16 :goto_18

    .line 352
    .line 353
    :pswitch_b
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    if-eqz v9, :cond_1c

    .line 358
    .line 359
    shl-int/lit8 v9, v15, 0x3

    .line 360
    .line 361
    invoke-static {v9, v5, v10}, Lb/c;->b(III)I

    .line 362
    .line 363
    .line 364
    move-result v10

    .line 365
    goto/16 :goto_18

    .line 366
    .line 367
    :pswitch_c
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    if-eqz v5, :cond_1c

    .line 372
    .line 373
    shl-int/lit8 v5, v15, 0x3

    .line 374
    .line 375
    invoke-static {v5, v9, v10}, Lb/c;->b(III)I

    .line 376
    .line 377
    .line 378
    move-result v10

    .line 379
    goto/16 :goto_18

    .line 380
    .line 381
    :pswitch_d
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-eqz v5, :cond_1c

    .line 386
    .line 387
    shl-int/lit8 v5, v15, 0x3

    .line 388
    .line 389
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    .line 394
    .line 395
    .line 396
    move-result v9

    .line 397
    invoke-static {v5, v9, v10}, Lb/c;->b(III)I

    .line 398
    .line 399
    .line 400
    move-result v10

    .line 401
    goto/16 :goto_18

    .line 402
    .line 403
    :pswitch_e
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-eqz v5, :cond_1c

    .line 408
    .line 409
    shl-int/lit8 v5, v15, 0x3

    .line 410
    .line 411
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 412
    .line 413
    .line 414
    move-result-wide v11

    .line 415
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    .line 416
    .line 417
    .line 418
    move-result v9

    .line 419
    invoke-static {v5, v9, v10}, Lb/c;->b(III)I

    .line 420
    .line 421
    .line 422
    move-result v10

    .line 423
    goto/16 :goto_18

    .line 424
    .line 425
    :pswitch_f
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    if-eqz v5, :cond_1c

    .line 430
    .line 431
    shl-int/lit8 v5, v15, 0x3

    .line 432
    .line 433
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 434
    .line 435
    .line 436
    move-result-wide v11

    .line 437
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    .line 438
    .line 439
    .line 440
    move-result v9

    .line 441
    invoke-static {v5, v9, v10}, Lb/c;->b(III)I

    .line 442
    .line 443
    .line 444
    move-result v10

    .line 445
    goto/16 :goto_18

    .line 446
    .line 447
    :pswitch_10
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    if-eqz v9, :cond_1c

    .line 452
    .line 453
    shl-int/lit8 v9, v15, 0x3

    .line 454
    .line 455
    invoke-static {v9, v5, v10}, Lb/c;->b(III)I

    .line 456
    .line 457
    .line 458
    move-result v10

    .line 459
    goto/16 :goto_18

    .line 460
    .line 461
    :pswitch_11
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    if-eqz v5, :cond_1c

    .line 466
    .line 467
    shl-int/lit8 v5, v15, 0x3

    .line 468
    .line 469
    invoke-static {v5, v9, v10}, Lb/c;->b(III)I

    .line 470
    .line 471
    .line 472
    move-result v10

    .line 473
    goto/16 :goto_18

    .line 474
    .line 475
    :pswitch_12
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzr(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    check-cast v5, Lcom/google/android/gms/internal/cast/zzur;

    .line 484
    .line 485
    check-cast v9, Lcom/google/android/gms/internal/cast/zzuq;

    .line 486
    .line 487
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 488
    .line 489
    .line 490
    move-result v9

    .line 491
    if-nez v9, :cond_1c

    .line 492
    .line 493
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/zzur;->entrySet()Ljava/util/Set;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 498
    .line 499
    .line 500
    move-result-object v5

    .line 501
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 502
    .line 503
    .line 504
    move-result v9

    .line 505
    if-nez v9, :cond_5

    .line 506
    .line 507
    goto/16 :goto_18

    .line 508
    .line 509
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    check-cast v1, Ljava/util/Map$Entry;

    .line 514
    .line 515
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    throw v16

    .line 522
    :pswitch_13
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    check-cast v5, Ljava/util/List;

    .line 527
    .line 528
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    sget v11, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 533
    .line 534
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 535
    .line 536
    .line 537
    move-result v11

    .line 538
    if-nez v11, :cond_6

    .line 539
    .line 540
    move v13, v8

    .line 541
    goto :goto_7

    .line 542
    :cond_6
    move v12, v8

    .line 543
    move v13, v12

    .line 544
    :goto_6
    if-ge v12, v11, :cond_7

    .line 545
    .line 546
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v14

    .line 550
    check-cast v14, Lcom/google/android/gms/internal/cast/zzux;

    .line 551
    .line 552
    invoke-static {v15, v14, v9}, Lcom/google/android/gms/internal/cast/zztc;->zzt(ILcom/google/android/gms/internal/cast/zzux;Lcom/google/android/gms/internal/cast/zzvi;)I

    .line 553
    .line 554
    .line 555
    move-result v14

    .line 556
    add-int/2addr v13, v14

    .line 557
    add-int/2addr v12, v6

    .line 558
    goto :goto_6

    .line 559
    :cond_7
    :goto_7
    add-int/2addr v10, v13

    .line 560
    goto/16 :goto_18

    .line 561
    .line 562
    :pswitch_14
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    check-cast v5, Ljava/util/List;

    .line 567
    .line 568
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzj(Ljava/util/List;)I

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    if-lez v5, :cond_1c

    .line 573
    .line 574
    shl-int/lit8 v9, v15, 0x3

    .line 575
    .line 576
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 577
    .line 578
    .line 579
    move-result v11

    .line 580
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 581
    .line 582
    .line 583
    move-result v9

    .line 584
    :goto_8
    add-int/2addr v9, v11

    .line 585
    goto/16 :goto_4

    .line 586
    .line 587
    :pswitch_15
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    check-cast v5, Ljava/util/List;

    .line 592
    .line 593
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzi(Ljava/util/List;)I

    .line 594
    .line 595
    .line 596
    move-result v5

    .line 597
    if-lez v5, :cond_1c

    .line 598
    .line 599
    shl-int/lit8 v9, v15, 0x3

    .line 600
    .line 601
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 602
    .line 603
    .line 604
    move-result v11

    .line 605
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 606
    .line 607
    .line 608
    move-result v9

    .line 609
    goto :goto_8

    .line 610
    :pswitch_16
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v5

    .line 614
    check-cast v5, Ljava/util/List;

    .line 615
    .line 616
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zze(Ljava/util/List;)I

    .line 617
    .line 618
    .line 619
    move-result v5

    .line 620
    if-lez v5, :cond_1c

    .line 621
    .line 622
    shl-int/lit8 v9, v15, 0x3

    .line 623
    .line 624
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 625
    .line 626
    .line 627
    move-result v11

    .line 628
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 629
    .line 630
    .line 631
    move-result v9

    .line 632
    goto :goto_8

    .line 633
    :pswitch_17
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v5

    .line 637
    check-cast v5, Ljava/util/List;

    .line 638
    .line 639
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzc(Ljava/util/List;)I

    .line 640
    .line 641
    .line 642
    move-result v5

    .line 643
    if-lez v5, :cond_1c

    .line 644
    .line 645
    shl-int/lit8 v9, v15, 0x3

    .line 646
    .line 647
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 648
    .line 649
    .line 650
    move-result v11

    .line 651
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 652
    .line 653
    .line 654
    move-result v9

    .line 655
    goto :goto_8

    .line 656
    :pswitch_18
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v5

    .line 660
    check-cast v5, Ljava/util/List;

    .line 661
    .line 662
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zza(Ljava/util/List;)I

    .line 663
    .line 664
    .line 665
    move-result v5

    .line 666
    if-lez v5, :cond_1c

    .line 667
    .line 668
    shl-int/lit8 v9, v15, 0x3

    .line 669
    .line 670
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 671
    .line 672
    .line 673
    move-result v11

    .line 674
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 675
    .line 676
    .line 677
    move-result v9

    .line 678
    goto :goto_8

    .line 679
    :pswitch_19
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    check-cast v5, Ljava/util/List;

    .line 684
    .line 685
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzk(Ljava/util/List;)I

    .line 686
    .line 687
    .line 688
    move-result v5

    .line 689
    if-lez v5, :cond_1c

    .line 690
    .line 691
    shl-int/lit8 v9, v15, 0x3

    .line 692
    .line 693
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 694
    .line 695
    .line 696
    move-result v11

    .line 697
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 698
    .line 699
    .line 700
    move-result v9

    .line 701
    goto :goto_8

    .line 702
    :pswitch_1a
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    check-cast v5, Ljava/util/List;

    .line 707
    .line 708
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 709
    .line 710
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    if-lez v5, :cond_1c

    .line 715
    .line 716
    shl-int/lit8 v9, v15, 0x3

    .line 717
    .line 718
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 719
    .line 720
    .line 721
    move-result v11

    .line 722
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 723
    .line 724
    .line 725
    move-result v9

    .line 726
    goto/16 :goto_8

    .line 727
    .line 728
    :pswitch_1b
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v5

    .line 732
    check-cast v5, Ljava/util/List;

    .line 733
    .line 734
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzc(Ljava/util/List;)I

    .line 735
    .line 736
    .line 737
    move-result v5

    .line 738
    if-lez v5, :cond_1c

    .line 739
    .line 740
    shl-int/lit8 v9, v15, 0x3

    .line 741
    .line 742
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 743
    .line 744
    .line 745
    move-result v11

    .line 746
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 747
    .line 748
    .line 749
    move-result v9

    .line 750
    goto/16 :goto_8

    .line 751
    .line 752
    :pswitch_1c
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v5

    .line 756
    check-cast v5, Ljava/util/List;

    .line 757
    .line 758
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zze(Ljava/util/List;)I

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    if-lez v5, :cond_1c

    .line 763
    .line 764
    shl-int/lit8 v9, v15, 0x3

    .line 765
    .line 766
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 767
    .line 768
    .line 769
    move-result v11

    .line 770
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 771
    .line 772
    .line 773
    move-result v9

    .line 774
    goto/16 :goto_8

    .line 775
    .line 776
    :pswitch_1d
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v5

    .line 780
    check-cast v5, Ljava/util/List;

    .line 781
    .line 782
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzf(Ljava/util/List;)I

    .line 783
    .line 784
    .line 785
    move-result v5

    .line 786
    if-lez v5, :cond_1c

    .line 787
    .line 788
    shl-int/lit8 v9, v15, 0x3

    .line 789
    .line 790
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 791
    .line 792
    .line 793
    move-result v11

    .line 794
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 795
    .line 796
    .line 797
    move-result v9

    .line 798
    goto/16 :goto_8

    .line 799
    .line 800
    :pswitch_1e
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v5

    .line 804
    check-cast v5, Ljava/util/List;

    .line 805
    .line 806
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzl(Ljava/util/List;)I

    .line 807
    .line 808
    .line 809
    move-result v5

    .line 810
    if-lez v5, :cond_1c

    .line 811
    .line 812
    shl-int/lit8 v9, v15, 0x3

    .line 813
    .line 814
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 815
    .line 816
    .line 817
    move-result v11

    .line 818
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 819
    .line 820
    .line 821
    move-result v9

    .line 822
    goto/16 :goto_8

    .line 823
    .line 824
    :pswitch_1f
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v5

    .line 828
    check-cast v5, Ljava/util/List;

    .line 829
    .line 830
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzg(Ljava/util/List;)I

    .line 831
    .line 832
    .line 833
    move-result v5

    .line 834
    if-lez v5, :cond_1c

    .line 835
    .line 836
    shl-int/lit8 v9, v15, 0x3

    .line 837
    .line 838
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 839
    .line 840
    .line 841
    move-result v11

    .line 842
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 843
    .line 844
    .line 845
    move-result v9

    .line 846
    goto/16 :goto_8

    .line 847
    .line 848
    :pswitch_20
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v5

    .line 852
    check-cast v5, Ljava/util/List;

    .line 853
    .line 854
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzc(Ljava/util/List;)I

    .line 855
    .line 856
    .line 857
    move-result v5

    .line 858
    if-lez v5, :cond_1c

    .line 859
    .line 860
    shl-int/lit8 v9, v15, 0x3

    .line 861
    .line 862
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 863
    .line 864
    .line 865
    move-result v11

    .line 866
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 867
    .line 868
    .line 869
    move-result v9

    .line 870
    goto/16 :goto_8

    .line 871
    .line 872
    :pswitch_21
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v5

    .line 876
    check-cast v5, Ljava/util/List;

    .line 877
    .line 878
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zze(Ljava/util/List;)I

    .line 879
    .line 880
    .line 881
    move-result v5

    .line 882
    if-lez v5, :cond_1c

    .line 883
    .line 884
    shl-int/lit8 v9, v15, 0x3

    .line 885
    .line 886
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 887
    .line 888
    .line 889
    move-result v11

    .line 890
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 891
    .line 892
    .line 893
    move-result v9

    .line 894
    goto/16 :goto_8

    .line 895
    .line 896
    :pswitch_22
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v5

    .line 900
    check-cast v5, Ljava/util/List;

    .line 901
    .line 902
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 903
    .line 904
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 905
    .line 906
    .line 907
    move-result v9

    .line 908
    if-nez v9, :cond_8

    .line 909
    .line 910
    :goto_9
    move v11, v8

    .line 911
    goto :goto_b

    .line 912
    :cond_8
    shl-int/lit8 v11, v15, 0x3

    .line 913
    .line 914
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzj(Ljava/util/List;)I

    .line 915
    .line 916
    .line 917
    move-result v5

    .line 918
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 919
    .line 920
    .line 921
    move-result v11

    .line 922
    :goto_a
    mul-int/2addr v11, v9

    .line 923
    add-int/2addr v11, v5

    .line 924
    :cond_9
    :goto_b
    add-int/2addr v10, v11

    .line 925
    goto/16 :goto_18

    .line 926
    .line 927
    :pswitch_23
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v5

    .line 931
    check-cast v5, Ljava/util/List;

    .line 932
    .line 933
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 934
    .line 935
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 936
    .line 937
    .line 938
    move-result v9

    .line 939
    if-nez v9, :cond_a

    .line 940
    .line 941
    goto :goto_9

    .line 942
    :cond_a
    shl-int/lit8 v11, v15, 0x3

    .line 943
    .line 944
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzi(Ljava/util/List;)I

    .line 945
    .line 946
    .line 947
    move-result v5

    .line 948
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 949
    .line 950
    .line 951
    move-result v11

    .line 952
    goto :goto_a

    .line 953
    :pswitch_24
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v5

    .line 957
    check-cast v5, Ljava/util/List;

    .line 958
    .line 959
    invoke-static {v15, v5, v8}, Lcom/google/android/gms/internal/cast/zzvk;->zzd(ILjava/util/List;Z)I

    .line 960
    .line 961
    .line 962
    move-result v5

    .line 963
    goto/16 :goto_5

    .line 964
    .line 965
    :pswitch_25
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v5

    .line 969
    check-cast v5, Ljava/util/List;

    .line 970
    .line 971
    invoke-static {v15, v5, v8}, Lcom/google/android/gms/internal/cast/zzvk;->zzb(ILjava/util/List;Z)I

    .line 972
    .line 973
    .line 974
    move-result v5

    .line 975
    goto/16 :goto_5

    .line 976
    .line 977
    :pswitch_26
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v5

    .line 981
    check-cast v5, Ljava/util/List;

    .line 982
    .line 983
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 984
    .line 985
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 986
    .line 987
    .line 988
    move-result v9

    .line 989
    if-nez v9, :cond_b

    .line 990
    .line 991
    goto :goto_9

    .line 992
    :cond_b
    shl-int/lit8 v11, v15, 0x3

    .line 993
    .line 994
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zza(Ljava/util/List;)I

    .line 995
    .line 996
    .line 997
    move-result v5

    .line 998
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 999
    .line 1000
    .line 1001
    move-result v11

    .line 1002
    goto :goto_a

    .line 1003
    :pswitch_27
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v5

    .line 1007
    check-cast v5, Ljava/util/List;

    .line 1008
    .line 1009
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 1010
    .line 1011
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1012
    .line 1013
    .line 1014
    move-result v9

    .line 1015
    if-nez v9, :cond_c

    .line 1016
    .line 1017
    goto :goto_9

    .line 1018
    :cond_c
    shl-int/lit8 v11, v15, 0x3

    .line 1019
    .line 1020
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzk(Ljava/util/List;)I

    .line 1021
    .line 1022
    .line 1023
    move-result v5

    .line 1024
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1025
    .line 1026
    .line 1027
    move-result v11

    .line 1028
    goto :goto_a

    .line 1029
    :pswitch_28
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v5

    .line 1033
    check-cast v5, Ljava/util/List;

    .line 1034
    .line 1035
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 1036
    .line 1037
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1038
    .line 1039
    .line 1040
    move-result v9

    .line 1041
    if-nez v9, :cond_d

    .line 1042
    .line 1043
    goto/16 :goto_9

    .line 1044
    .line 1045
    :cond_d
    shl-int/lit8 v11, v15, 0x3

    .line 1046
    .line 1047
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1048
    .line 1049
    .line 1050
    move-result v11

    .line 1051
    mul-int/2addr v11, v9

    .line 1052
    move v9, v8

    .line 1053
    :goto_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1054
    .line 1055
    .line 1056
    move-result v12

    .line 1057
    if-ge v9, v12, :cond_9

    .line 1058
    .line 1059
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v12

    .line 1063
    check-cast v12, Lcom/google/android/gms/internal/cast/zzsu;

    .line 1064
    .line 1065
    invoke-virtual {v12}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    .line 1066
    .line 1067
    .line 1068
    move-result v12

    .line 1069
    invoke-static {v12, v12, v11}, Lb/c;->b(III)I

    .line 1070
    .line 1071
    .line 1072
    move-result v11

    .line 1073
    add-int/2addr v9, v6

    .line 1074
    goto :goto_c

    .line 1075
    :pswitch_29
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v5

    .line 1079
    check-cast v5, Ljava/util/List;

    .line 1080
    .line 1081
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v9

    .line 1085
    sget v11, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 1086
    .line 1087
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1088
    .line 1089
    .line 1090
    move-result v11

    .line 1091
    if-nez v11, :cond_e

    .line 1092
    .line 1093
    move v12, v8

    .line 1094
    goto :goto_f

    .line 1095
    :cond_e
    shl-int/lit8 v12, v15, 0x3

    .line 1096
    .line 1097
    invoke-static {v12}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1098
    .line 1099
    .line 1100
    move-result v12

    .line 1101
    mul-int/2addr v12, v11

    .line 1102
    move v13, v8

    .line 1103
    :goto_d
    if-ge v13, v11, :cond_10

    .line 1104
    .line 1105
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v14

    .line 1109
    instance-of v15, v14, Lcom/google/android/gms/internal/cast/zzud;

    .line 1110
    .line 1111
    if-eqz v15, :cond_f

    .line 1112
    .line 1113
    check-cast v14, Lcom/google/android/gms/internal/cast/zzud;

    .line 1114
    .line 1115
    invoke-virtual {v14}, Lcom/google/android/gms/internal/cast/zzud;->zza()I

    .line 1116
    .line 1117
    .line 1118
    move-result v14

    .line 1119
    invoke-static {v14, v14, v12}, Lb/c;->b(III)I

    .line 1120
    .line 1121
    .line 1122
    move-result v12

    .line 1123
    goto :goto_e

    .line 1124
    :cond_f
    check-cast v14, Lcom/google/android/gms/internal/cast/zzux;

    .line 1125
    .line 1126
    invoke-static {v14, v9}, Lcom/google/android/gms/internal/cast/zztc;->zzv(Lcom/google/android/gms/internal/cast/zzux;Lcom/google/android/gms/internal/cast/zzvi;)I

    .line 1127
    .line 1128
    .line 1129
    move-result v14

    .line 1130
    add-int/2addr v14, v12

    .line 1131
    move v12, v14

    .line 1132
    :goto_e
    add-int/2addr v13, v6

    .line 1133
    goto :goto_d

    .line 1134
    :cond_10
    :goto_f
    add-int/2addr v10, v12

    .line 1135
    goto/16 :goto_18

    .line 1136
    .line 1137
    :pswitch_2a
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v5

    .line 1141
    check-cast v5, Ljava/util/List;

    .line 1142
    .line 1143
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 1144
    .line 1145
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1146
    .line 1147
    .line 1148
    move-result v9

    .line 1149
    if-nez v9, :cond_11

    .line 1150
    .line 1151
    goto/16 :goto_9

    .line 1152
    .line 1153
    :cond_11
    shl-int/lit8 v11, v15, 0x3

    .line 1154
    .line 1155
    instance-of v12, v5, Lcom/google/android/gms/internal/cast/zzuf;

    .line 1156
    .line 1157
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1158
    .line 1159
    .line 1160
    move-result v11

    .line 1161
    mul-int/2addr v11, v9

    .line 1162
    if-eqz v12, :cond_13

    .line 1163
    .line 1164
    check-cast v5, Lcom/google/android/gms/internal/cast/zzuf;

    .line 1165
    .line 1166
    move v12, v8

    .line 1167
    :goto_10
    if-ge v12, v9, :cond_9

    .line 1168
    .line 1169
    invoke-interface {v5, v12}, Lcom/google/android/gms/internal/cast/zzuf;->zze(I)Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v13

    .line 1173
    instance-of v14, v13, Lcom/google/android/gms/internal/cast/zzsu;

    .line 1174
    .line 1175
    if-eqz v14, :cond_12

    .line 1176
    .line 1177
    check-cast v13, Lcom/google/android/gms/internal/cast/zzsu;

    .line 1178
    .line 1179
    invoke-virtual {v13}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    .line 1180
    .line 1181
    .line 1182
    move-result v13

    .line 1183
    invoke-static {v13, v13, v11}, Lb/c;->b(III)I

    .line 1184
    .line 1185
    .line 1186
    move-result v11

    .line 1187
    goto :goto_11

    .line 1188
    :cond_12
    check-cast v13, Ljava/lang/String;

    .line 1189
    .line 1190
    invoke-static {v13}, Lcom/google/android/gms/internal/cast/zztc;->zzw(Ljava/lang/String;)I

    .line 1191
    .line 1192
    .line 1193
    move-result v13

    .line 1194
    add-int/2addr v13, v11

    .line 1195
    move v11, v13

    .line 1196
    :goto_11
    add-int/2addr v12, v6

    .line 1197
    goto :goto_10

    .line 1198
    :cond_13
    move v12, v8

    .line 1199
    :goto_12
    if-ge v12, v9, :cond_9

    .line 1200
    .line 1201
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v13

    .line 1205
    instance-of v14, v13, Lcom/google/android/gms/internal/cast/zzsu;

    .line 1206
    .line 1207
    if-eqz v14, :cond_14

    .line 1208
    .line 1209
    check-cast v13, Lcom/google/android/gms/internal/cast/zzsu;

    .line 1210
    .line 1211
    invoke-virtual {v13}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    .line 1212
    .line 1213
    .line 1214
    move-result v13

    .line 1215
    invoke-static {v13, v13, v11}, Lb/c;->b(III)I

    .line 1216
    .line 1217
    .line 1218
    move-result v11

    .line 1219
    goto :goto_13

    .line 1220
    :cond_14
    check-cast v13, Ljava/lang/String;

    .line 1221
    .line 1222
    invoke-static {v13}, Lcom/google/android/gms/internal/cast/zztc;->zzw(Ljava/lang/String;)I

    .line 1223
    .line 1224
    .line 1225
    move-result v13

    .line 1226
    add-int/2addr v13, v11

    .line 1227
    move v11, v13

    .line 1228
    :goto_13
    add-int/2addr v12, v6

    .line 1229
    goto :goto_12

    .line 1230
    :pswitch_2b
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v5

    .line 1234
    check-cast v5, Ljava/util/List;

    .line 1235
    .line 1236
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 1237
    .line 1238
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1239
    .line 1240
    .line 1241
    move-result v5

    .line 1242
    if-nez v5, :cond_15

    .line 1243
    .line 1244
    :goto_14
    move v9, v8

    .line 1245
    goto :goto_15

    .line 1246
    :cond_15
    shl-int/lit8 v9, v15, 0x3

    .line 1247
    .line 1248
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1249
    .line 1250
    .line 1251
    move-result v9

    .line 1252
    add-int/2addr v9, v6

    .line 1253
    mul-int/2addr v9, v5

    .line 1254
    :goto_15
    add-int/2addr v10, v9

    .line 1255
    goto/16 :goto_18

    .line 1256
    .line 1257
    :pswitch_2c
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v5

    .line 1261
    check-cast v5, Ljava/util/List;

    .line 1262
    .line 1263
    invoke-static {v15, v5, v8}, Lcom/google/android/gms/internal/cast/zzvk;->zzb(ILjava/util/List;Z)I

    .line 1264
    .line 1265
    .line 1266
    move-result v5

    .line 1267
    goto/16 :goto_5

    .line 1268
    .line 1269
    :pswitch_2d
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v5

    .line 1273
    check-cast v5, Ljava/util/List;

    .line 1274
    .line 1275
    invoke-static {v15, v5, v8}, Lcom/google/android/gms/internal/cast/zzvk;->zzd(ILjava/util/List;Z)I

    .line 1276
    .line 1277
    .line 1278
    move-result v5

    .line 1279
    goto/16 :goto_5

    .line 1280
    .line 1281
    :pswitch_2e
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v5

    .line 1285
    check-cast v5, Ljava/util/List;

    .line 1286
    .line 1287
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 1288
    .line 1289
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1290
    .line 1291
    .line 1292
    move-result v9

    .line 1293
    if-nez v9, :cond_16

    .line 1294
    .line 1295
    goto/16 :goto_9

    .line 1296
    .line 1297
    :cond_16
    shl-int/lit8 v11, v15, 0x3

    .line 1298
    .line 1299
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzf(Ljava/util/List;)I

    .line 1300
    .line 1301
    .line 1302
    move-result v5

    .line 1303
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1304
    .line 1305
    .line 1306
    move-result v11

    .line 1307
    goto/16 :goto_a

    .line 1308
    .line 1309
    :pswitch_2f
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v5

    .line 1313
    check-cast v5, Ljava/util/List;

    .line 1314
    .line 1315
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 1316
    .line 1317
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1318
    .line 1319
    .line 1320
    move-result v9

    .line 1321
    if-nez v9, :cond_17

    .line 1322
    .line 1323
    goto/16 :goto_9

    .line 1324
    .line 1325
    :cond_17
    shl-int/lit8 v11, v15, 0x3

    .line 1326
    .line 1327
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzl(Ljava/util/List;)I

    .line 1328
    .line 1329
    .line 1330
    move-result v5

    .line 1331
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1332
    .line 1333
    .line 1334
    move-result v11

    .line 1335
    goto/16 :goto_a

    .line 1336
    .line 1337
    :pswitch_30
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v5

    .line 1341
    check-cast v5, Ljava/util/List;

    .line 1342
    .line 1343
    sget v9, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 1344
    .line 1345
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1346
    .line 1347
    .line 1348
    move-result v9

    .line 1349
    if-nez v9, :cond_18

    .line 1350
    .line 1351
    goto :goto_14

    .line 1352
    :cond_18
    shl-int/lit8 v9, v15, 0x3

    .line 1353
    .line 1354
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzvk;->zzg(Ljava/util/List;)I

    .line 1355
    .line 1356
    .line 1357
    move-result v11

    .line 1358
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1359
    .line 1360
    .line 1361
    move-result v5

    .line 1362
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1363
    .line 1364
    .line 1365
    move-result v9

    .line 1366
    mul-int/2addr v9, v5

    .line 1367
    add-int/2addr v9, v11

    .line 1368
    goto :goto_15

    .line 1369
    :pswitch_31
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v5

    .line 1373
    check-cast v5, Ljava/util/List;

    .line 1374
    .line 1375
    invoke-static {v15, v5, v8}, Lcom/google/android/gms/internal/cast/zzvk;->zzb(ILjava/util/List;Z)I

    .line 1376
    .line 1377
    .line 1378
    move-result v5

    .line 1379
    goto/16 :goto_5

    .line 1380
    .line 1381
    :pswitch_32
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v5

    .line 1385
    check-cast v5, Ljava/util/List;

    .line 1386
    .line 1387
    invoke-static {v15, v5, v8}, Lcom/google/android/gms/internal/cast/zzvk;->zzd(ILjava/util/List;Z)I

    .line 1388
    .line 1389
    .line 1390
    move-result v5

    .line 1391
    goto/16 :goto_5

    .line 1392
    .line 1393
    :pswitch_33
    move v5, v11

    .line 1394
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1395
    .line 1396
    .line 1397
    move-result v5

    .line 1398
    if-eqz v5, :cond_1c

    .line 1399
    .line 1400
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v5

    .line 1404
    check-cast v5, Lcom/google/android/gms/internal/cast/zzux;

    .line 1405
    .line 1406
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v9

    .line 1410
    invoke-static {v15, v5, v9}, Lcom/google/android/gms/internal/cast/zztc;->zzt(ILcom/google/android/gms/internal/cast/zzux;Lcom/google/android/gms/internal/cast/zzvi;)I

    .line 1411
    .line 1412
    .line 1413
    move-result v5

    .line 1414
    goto/16 :goto_3

    .line 1415
    .line 1416
    :pswitch_34
    move v5, v11

    .line 1417
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1418
    .line 1419
    .line 1420
    move-result v5

    .line 1421
    if-eqz v5, :cond_19

    .line 1422
    .line 1423
    shl-int/lit8 v0, v15, 0x3

    .line 1424
    .line 1425
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1426
    .line 1427
    .line 1428
    move-result-wide v11

    .line 1429
    add-long v13, v11, v11

    .line 1430
    .line 1431
    shr-long v11, v11, v17

    .line 1432
    .line 1433
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1434
    .line 1435
    .line 1436
    move-result v0

    .line 1437
    xor-long/2addr v11, v13

    .line 1438
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    .line 1439
    .line 1440
    .line 1441
    move-result v5

    .line 1442
    add-int/2addr v5, v0

    .line 1443
    add-int/2addr v10, v5

    .line 1444
    :cond_19
    :goto_16
    move-object/from16 v0, p0

    .line 1445
    .line 1446
    goto/16 :goto_18

    .line 1447
    .line 1448
    :pswitch_35
    move v5, v11

    .line 1449
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1450
    .line 1451
    .line 1452
    move-result v5

    .line 1453
    if-eqz v5, :cond_19

    .line 1454
    .line 1455
    shl-int/lit8 v0, v15, 0x3

    .line 1456
    .line 1457
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1458
    .line 1459
    .line 1460
    move-result v5

    .line 1461
    add-int v9, v5, v5

    .line 1462
    .line 1463
    shr-int/lit8 v5, v5, 0x1f

    .line 1464
    .line 1465
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1466
    .line 1467
    .line 1468
    move-result v0

    .line 1469
    xor-int/2addr v5, v9

    .line 1470
    invoke-static {v5, v0, v10}, Lb/c;->b(III)I

    .line 1471
    .line 1472
    .line 1473
    move-result v10

    .line 1474
    goto :goto_16

    .line 1475
    :pswitch_36
    move v5, v11

    .line 1476
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1477
    .line 1478
    .line 1479
    move-result v5

    .line 1480
    if-eqz v5, :cond_1a

    .line 1481
    .line 1482
    shl-int/lit8 v0, v15, 0x3

    .line 1483
    .line 1484
    invoke-static {v0, v9, v10}, Lb/c;->b(III)I

    .line 1485
    .line 1486
    .line 1487
    move-result v10

    .line 1488
    :cond_1a
    :goto_17
    move-object/from16 v0, p0

    .line 1489
    .line 1490
    move-object/from16 v1, p1

    .line 1491
    .line 1492
    goto/16 :goto_18

    .line 1493
    .line 1494
    :pswitch_37
    move v9, v5

    .line 1495
    move v5, v11

    .line 1496
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v5

    .line 1500
    if-eqz v5, :cond_1a

    .line 1501
    .line 1502
    shl-int/lit8 v0, v15, 0x3

    .line 1503
    .line 1504
    invoke-static {v0, v9, v10}, Lb/c;->b(III)I

    .line 1505
    .line 1506
    .line 1507
    move-result v10

    .line 1508
    goto :goto_17

    .line 1509
    :pswitch_38
    move v5, v11

    .line 1510
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1511
    .line 1512
    .line 1513
    move-result v5

    .line 1514
    if-eqz v5, :cond_19

    .line 1515
    .line 1516
    shl-int/lit8 v0, v15, 0x3

    .line 1517
    .line 1518
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1519
    .line 1520
    .line 1521
    move-result v5

    .line 1522
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    .line 1523
    .line 1524
    .line 1525
    move-result v5

    .line 1526
    invoke-static {v0, v5, v10}, Lb/c;->b(III)I

    .line 1527
    .line 1528
    .line 1529
    move-result v10

    .line 1530
    goto :goto_16

    .line 1531
    :pswitch_39
    move v5, v11

    .line 1532
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1533
    .line 1534
    .line 1535
    move-result v5

    .line 1536
    if-eqz v5, :cond_19

    .line 1537
    .line 1538
    shl-int/lit8 v0, v15, 0x3

    .line 1539
    .line 1540
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1541
    .line 1542
    .line 1543
    move-result v5

    .line 1544
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1545
    .line 1546
    .line 1547
    move-result v5

    .line 1548
    invoke-static {v0, v5, v10}, Lb/c;->b(III)I

    .line 1549
    .line 1550
    .line 1551
    move-result v10

    .line 1552
    goto :goto_16

    .line 1553
    :pswitch_3a
    move v5, v11

    .line 1554
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1555
    .line 1556
    .line 1557
    move-result v5

    .line 1558
    if-eqz v5, :cond_19

    .line 1559
    .line 1560
    shl-int/lit8 v0, v15, 0x3

    .line 1561
    .line 1562
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v5

    .line 1566
    check-cast v5, Lcom/google/android/gms/internal/cast/zzsu;

    .line 1567
    .line 1568
    sget v9, Lcom/google/android/gms/internal/cast/zztc;->zzb:I

    .line 1569
    .line 1570
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    .line 1571
    .line 1572
    .line 1573
    move-result v5

    .line 1574
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1575
    .line 1576
    .line 1577
    move-result v9

    .line 1578
    add-int/2addr v9, v5

    .line 1579
    invoke-static {v0, v9, v10}, Lb/c;->b(III)I

    .line 1580
    .line 1581
    .line 1582
    move-result v10

    .line 1583
    goto/16 :goto_16

    .line 1584
    .line 1585
    :pswitch_3b
    move v5, v11

    .line 1586
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v5

    .line 1590
    if-eqz v5, :cond_1c

    .line 1591
    .line 1592
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v5

    .line 1596
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v9

    .line 1600
    invoke-static {v15, v5, v9}, Lcom/google/android/gms/internal/cast/zzvk;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)I

    .line 1601
    .line 1602
    .line 1603
    move-result v5

    .line 1604
    goto/16 :goto_5

    .line 1605
    .line 1606
    :pswitch_3c
    move v5, v11

    .line 1607
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1608
    .line 1609
    .line 1610
    move-result v5

    .line 1611
    if-eqz v5, :cond_19

    .line 1612
    .line 1613
    shl-int/lit8 v0, v15, 0x3

    .line 1614
    .line 1615
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v5

    .line 1619
    instance-of v9, v5, Lcom/google/android/gms/internal/cast/zzsu;

    .line 1620
    .line 1621
    if-eqz v9, :cond_1b

    .line 1622
    .line 1623
    check-cast v5, Lcom/google/android/gms/internal/cast/zzsu;

    .line 1624
    .line 1625
    sget v9, Lcom/google/android/gms/internal/cast/zztc;->zzb:I

    .line 1626
    .line 1627
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    .line 1628
    .line 1629
    .line 1630
    move-result v5

    .line 1631
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    .line 1632
    .line 1633
    .line 1634
    move-result v9

    .line 1635
    add-int/2addr v9, v5

    .line 1636
    invoke-static {v0, v9, v10}, Lb/c;->b(III)I

    .line 1637
    .line 1638
    .line 1639
    move-result v10

    .line 1640
    goto/16 :goto_16

    .line 1641
    .line 1642
    :cond_1b
    check-cast v5, Ljava/lang/String;

    .line 1643
    .line 1644
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzw(Ljava/lang/String;)I

    .line 1645
    .line 1646
    .line 1647
    move-result v5

    .line 1648
    invoke-static {v0, v5, v10}, Lb/c;->b(III)I

    .line 1649
    .line 1650
    .line 1651
    move-result v10

    .line 1652
    goto/16 :goto_16

    .line 1653
    .line 1654
    :pswitch_3d
    move v5, v11

    .line 1655
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v5

    .line 1659
    if-eqz v5, :cond_1a

    .line 1660
    .line 1661
    shl-int/lit8 v0, v15, 0x3

    .line 1662
    .line 1663
    invoke-static {v0, v6, v10}, Lb/c;->b(III)I

    .line 1664
    .line 1665
    .line 1666
    move-result v10

    .line 1667
    goto/16 :goto_17

    .line 1668
    .line 1669
    :pswitch_3e
    move v9, v5

    .line 1670
    move v5, v11

    .line 1671
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1672
    .line 1673
    .line 1674
    move-result v5

    .line 1675
    if-eqz v5, :cond_1a

    .line 1676
    .line 1677
    shl-int/lit8 v0, v15, 0x3

    .line 1678
    .line 1679
    invoke-static {v0, v9, v10}, Lb/c;->b(III)I

    .line 1680
    .line 1681
    .line 1682
    move-result v10

    .line 1683
    goto/16 :goto_17

    .line 1684
    .line 1685
    :pswitch_3f
    move v5, v11

    .line 1686
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1687
    .line 1688
    .line 1689
    move-result v5

    .line 1690
    if-eqz v5, :cond_1a

    .line 1691
    .line 1692
    shl-int/lit8 v0, v15, 0x3

    .line 1693
    .line 1694
    invoke-static {v0, v9, v10}, Lb/c;->b(III)I

    .line 1695
    .line 1696
    .line 1697
    move-result v10

    .line 1698
    goto/16 :goto_17

    .line 1699
    .line 1700
    :pswitch_40
    move v5, v11

    .line 1701
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1702
    .line 1703
    .line 1704
    move-result v5

    .line 1705
    if-eqz v5, :cond_19

    .line 1706
    .line 1707
    shl-int/lit8 v0, v15, 0x3

    .line 1708
    .line 1709
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1710
    .line 1711
    .line 1712
    move-result v5

    .line 1713
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    .line 1714
    .line 1715
    .line 1716
    move-result v5

    .line 1717
    invoke-static {v0, v5, v10}, Lb/c;->b(III)I

    .line 1718
    .line 1719
    .line 1720
    move-result v10

    .line 1721
    goto/16 :goto_16

    .line 1722
    .line 1723
    :pswitch_41
    move v5, v11

    .line 1724
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1725
    .line 1726
    .line 1727
    move-result v5

    .line 1728
    if-eqz v5, :cond_19

    .line 1729
    .line 1730
    shl-int/lit8 v0, v15, 0x3

    .line 1731
    .line 1732
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1733
    .line 1734
    .line 1735
    move-result-wide v11

    .line 1736
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    .line 1737
    .line 1738
    .line 1739
    move-result v5

    .line 1740
    invoke-static {v0, v5, v10}, Lb/c;->b(III)I

    .line 1741
    .line 1742
    .line 1743
    move-result v10

    .line 1744
    goto/16 :goto_16

    .line 1745
    .line 1746
    :pswitch_42
    move v5, v11

    .line 1747
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1748
    .line 1749
    .line 1750
    move-result v5

    .line 1751
    if-eqz v5, :cond_19

    .line 1752
    .line 1753
    shl-int/lit8 v0, v15, 0x3

    .line 1754
    .line 1755
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1756
    .line 1757
    .line 1758
    move-result-wide v11

    .line 1759
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    .line 1760
    .line 1761
    .line 1762
    move-result v5

    .line 1763
    invoke-static {v0, v5, v10}, Lb/c;->b(III)I

    .line 1764
    .line 1765
    .line 1766
    move-result v10

    .line 1767
    goto/16 :goto_16

    .line 1768
    .line 1769
    :pswitch_43
    move v9, v5

    .line 1770
    move v5, v11

    .line 1771
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1772
    .line 1773
    .line 1774
    move-result v5

    .line 1775
    if-eqz v5, :cond_1a

    .line 1776
    .line 1777
    shl-int/lit8 v0, v15, 0x3

    .line 1778
    .line 1779
    invoke-static {v0, v9, v10}, Lb/c;->b(III)I

    .line 1780
    .line 1781
    .line 1782
    move-result v10

    .line 1783
    goto/16 :goto_17

    .line 1784
    .line 1785
    :pswitch_44
    move v5, v11

    .line 1786
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1787
    .line 1788
    .line 1789
    move-result v5

    .line 1790
    if-eqz v5, :cond_1c

    .line 1791
    .line 1792
    shl-int/lit8 v5, v15, 0x3

    .line 1793
    .line 1794
    invoke-static {v5, v9, v10}, Lb/c;->b(III)I

    .line 1795
    .line 1796
    .line 1797
    move-result v10

    .line 1798
    :cond_1c
    :goto_18
    add-int/lit8 v2, v2, 0x3

    .line 1799
    .line 1800
    const v9, 0xfffff

    .line 1801
    .line 1802
    .line 1803
    goto/16 :goto_0

    .line 1804
    .line 1805
    :cond_1d
    const/16 v16, 0x0

    .line 1806
    .line 1807
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 1808
    .line 1809
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v3

    .line 1813
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cast/zzvz;->zza(Ljava/lang/Object;)I

    .line 1814
    .line 1815
    .line 1816
    move-result v2

    .line 1817
    add-int/2addr v10, v2

    .line 1818
    iget-boolean v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    .line 1819
    .line 1820
    if-nez v2, :cond_1e

    .line 1821
    .line 1822
    return v10

    .line 1823
    :cond_1e
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 1824
    .line 1825
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    .line 1826
    .line 1827
    .line 1828
    throw v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
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
        :pswitch_19
        :pswitch_18
        :pswitch_17
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

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v0, v2, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 13
    .line 14
    const v4, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v4, v2

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    aget v3, v3, v0

    .line 23
    .line 24
    int-to-long v4, v4

    .line 25
    const/16 v6, 0x25

    .line 26
    .line 27
    const/16 v7, 0x20

    .line 28
    .line 29
    packed-switch v2, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    mul-int/lit8 v1, v1, 0x35

    .line 41
    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_1
    add-int/2addr v2, v1

    .line 51
    move v1, v2

    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    mul-int/lit8 v1, v1, 0x35

    .line 61
    .line 62
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 67
    .line 68
    :goto_2
    ushr-long v4, v2, v7

    .line 69
    .line 70
    xor-long/2addr v2, v4

    .line 71
    long-to-int v2, v2

    .line 72
    :goto_3
    add-int/2addr v1, v2

    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    mul-int/lit8 v1, v1, 0x35

    .line 82
    .line 83
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    goto :goto_3

    .line 88
    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    mul-int/lit8 v1, v1, 0x35

    .line 95
    .line 96
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_1

    .line 108
    .line 109
    mul-int/lit8 v1, v1, 0x35

    .line 110
    .line 111
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    goto :goto_3

    .line 116
    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_1

    .line 121
    .line 122
    mul-int/lit8 v1, v1, 0x35

    .line 123
    .line 124
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    goto :goto_3

    .line 129
    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_1

    .line 134
    .line 135
    mul-int/lit8 v1, v1, 0x35

    .line 136
    .line 137
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    goto :goto_3

    .line 142
    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_1

    .line 147
    .line 148
    mul-int/lit8 v1, v1, 0x35

    .line 149
    .line 150
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    goto :goto_1

    .line 159
    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_1

    .line 164
    .line 165
    mul-int/lit8 v1, v1, 0x35

    .line 166
    .line 167
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    goto :goto_1

    .line 176
    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_1

    .line 181
    .line 182
    mul-int/lit8 v1, v1, 0x35

    .line 183
    .line 184
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    goto/16 :goto_1

    .line 195
    .line 196
    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_1

    .line 201
    .line 202
    mul-int/lit8 v1, v1, 0x35

    .line 203
    .line 204
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzD(Ljava/lang/Object;J)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzty;->zza(Z)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_1

    .line 219
    .line 220
    mul-int/lit8 v1, v1, 0x35

    .line 221
    .line 222
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_1

    .line 233
    .line 234
    mul-int/lit8 v1, v1, 0x35

    .line 235
    .line 236
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 237
    .line 238
    .line 239
    move-result-wide v2

    .line 240
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_1

    .line 249
    .line 250
    mul-int/lit8 v1, v1, 0x35

    .line 251
    .line 252
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    goto/16 :goto_3

    .line 257
    .line 258
    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_1

    .line 263
    .line 264
    mul-int/lit8 v1, v1, 0x35

    .line 265
    .line 266
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 267
    .line 268
    .line 269
    move-result-wide v2

    .line 270
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 271
    .line 272
    goto/16 :goto_2

    .line 273
    .line 274
    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_1

    .line 279
    .line 280
    mul-int/lit8 v1, v1, 0x35

    .line 281
    .line 282
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 283
    .line 284
    .line 285
    move-result-wide v2

    .line 286
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_1

    .line 295
    .line 296
    mul-int/lit8 v1, v1, 0x35

    .line 297
    .line 298
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzk(Ljava/lang/Object;J)F

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_1

    .line 313
    .line 314
    mul-int/lit8 v1, v1, 0x35

    .line 315
    .line 316
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzva;->zzj(Ljava/lang/Object;J)D

    .line 317
    .line 318
    .line 319
    move-result-wide v2

    .line 320
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 321
    .line 322
    .line 323
    move-result-wide v2

    .line 324
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 325
    .line 326
    goto/16 :goto_2

    .line 327
    .line 328
    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 329
    .line 330
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 341
    .line 342
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    goto/16 :goto_1

    .line 351
    .line 352
    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 353
    .line 354
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    if-eqz v2, :cond_0

    .line 359
    .line 360
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    :cond_0
    :goto_4
    add-int/2addr v1, v6

    .line 365
    goto/16 :goto_5

    .line 366
    .line 367
    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 368
    .line 369
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 370
    .line 371
    .line 372
    move-result-wide v2

    .line 373
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 374
    .line 375
    goto/16 :goto_2

    .line 376
    .line 377
    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 378
    .line 379
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    goto/16 :goto_3

    .line 384
    .line 385
    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 386
    .line 387
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 388
    .line 389
    .line 390
    move-result-wide v2

    .line 391
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 392
    .line 393
    goto/16 :goto_2

    .line 394
    .line 395
    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 396
    .line 397
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    goto/16 :goto_3

    .line 402
    .line 403
    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 404
    .line 405
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    goto/16 :goto_3

    .line 410
    .line 411
    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 412
    .line 413
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    goto/16 :goto_3

    .line 418
    .line 419
    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 420
    .line 421
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    goto/16 :goto_1

    .line 430
    .line 431
    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 432
    .line 433
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    if-eqz v2, :cond_0

    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    goto :goto_4

    .line 444
    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 445
    .line 446
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    check-cast v2, Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    goto/16 :goto_1

    .line 457
    .line 458
    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 459
    .line 460
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzty;->zza(Z)I

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    goto/16 :goto_1

    .line 469
    .line 470
    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 471
    .line 472
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    goto/16 :goto_3

    .line 477
    .line 478
    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 479
    .line 480
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 481
    .line 482
    .line 483
    move-result-wide v2

    .line 484
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 485
    .line 486
    goto/16 :goto_2

    .line 487
    .line 488
    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 489
    .line 490
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    goto/16 :goto_3

    .line 495
    .line 496
    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 497
    .line 498
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 499
    .line 500
    .line 501
    move-result-wide v2

    .line 502
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 503
    .line 504
    goto/16 :goto_2

    .line 505
    .line 506
    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 507
    .line 508
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 509
    .line 510
    .line 511
    move-result-wide v2

    .line 512
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 513
    .line 514
    goto/16 :goto_2

    .line 515
    .line 516
    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 517
    .line 518
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    goto/16 :goto_1

    .line 527
    .line 528
    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 529
    .line 530
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    .line 531
    .line 532
    .line 533
    move-result-wide v2

    .line 534
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 535
    .line 536
    .line 537
    move-result-wide v2

    .line 538
    sget-object v4, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 539
    .line 540
    goto/16 :goto_2

    .line 541
    .line 542
    :cond_1
    :goto_5
    add-int/lit8 v0, v0, 0x3

    .line 543
    .line 544
    goto/16 :goto_0

    .line 545
    .line 546
    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 547
    .line 548
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 549
    .line 550
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    add-int/2addr v0, v1

    .line 559
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    .line 560
    .line 561
    if-nez v1, :cond_3

    .line 562
    .line 563
    return v0

    .line 564
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 565
    .line 566
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    .line 567
    .line 568
    .line 569
    const/4 p1, 0x0

    .line 570
    throw p1

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
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

.method public final zzc()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zze:Lcom/google/android/gms/internal/cast/zzux;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/zztp;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzx()Lcom/google/android/gms/internal/cast/zztp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/cast/zztp;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/cast/zztp;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/zztp;->zzI(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Lcom/google/android/gms/internal/cast/zzsh;->zza:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzG()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 29
    .line 30
    :goto_0
    array-length v2, v0

    .line 31
    if-ge v1, v2, :cond_5

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const v3, 0xfffff

    .line 38
    .line 39
    .line 40
    and-int/2addr v3, v2

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-long v3, v3

    .line 46
    const/16 v5, 0x9

    .line 47
    .line 48
    if-eq v2, v5, :cond_3

    .line 49
    .line 50
    const/16 v5, 0x3c

    .line 51
    .line 52
    if-eq v2, v5, :cond_2

    .line 53
    .line 54
    const/16 v5, 0x44

    .line 55
    .line 56
    if-eq v2, v5, :cond_2

    .line 57
    .line 58
    packed-switch v2, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 63
    .line 64
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    move-object v6, v5

    .line 71
    check-cast v6, Lcom/google/android/gms/internal/cast/zzur;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/zzur;->zzb()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzi:Lcom/google/android/gms/internal/cast/zzul;

    .line 81
    .line 82
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/cast/zzul;->zza(Ljava/lang/Object;J)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 87
    .line 88
    aget v2, v2, v1

    .line 89
    .line 90
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget-object v5, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 101
    .line 102
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/cast/zzvi;->zzd(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    sget-object v5, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 121
    .line 122
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/cast/zzvi;->zzd(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zze(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    .line 138
    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zzb(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_2
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzva;->zzB(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    if-ge v0, v1, :cond_3

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const v2, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v2, v1

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 25
    .line 26
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    aget v3, v3, v0

    .line 31
    .line 32
    int-to-long v4, v2

    .line 33
    packed-switch v1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzu(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzw(Ljava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzu(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzw(Ljava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 85
    .line 86
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v1, Lcom/google/android/gms/internal/cast/zzur;

    .line 95
    .line 96
    check-cast v2, Lcom/google/android/gms/internal/cast/zzur;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_1

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzur;->zzd()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_0

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzur;->zza()Lcom/google/android/gms/internal/cast/zzur;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzur;->zzc(Lcom/google/android/gms/internal/cast/zzur;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzi:Lcom/google/android/gms/internal/cast/zzul;

    .line 123
    .line 124
    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzul;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzt(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_2

    .line 139
    .line 140
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzr(Ljava/lang/Object;JJ)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_2

    .line 157
    .line 158
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_2

    .line 175
    .line 176
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 177
    .line 178
    .line 179
    move-result-wide v1

    .line 180
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzr(Ljava/lang/Object;JJ)V

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_2

    .line 193
    .line 194
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_2

    .line 211
    .line 212
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 217
    .line 218
    .line 219
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_2

    .line 229
    .line 230
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 235
    .line 236
    .line 237
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_2

    .line 247
    .line 248
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzt(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_2

    .line 270
    .line 271
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_1

    .line 282
    .line 283
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_2

    .line 288
    .line 289
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzm(Ljava/lang/Object;JZ)V

    .line 294
    .line 295
    .line 296
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_2

    .line 306
    .line 307
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 312
    .line 313
    .line 314
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 315
    .line 316
    .line 317
    goto :goto_1

    .line 318
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_2

    .line 323
    .line 324
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 325
    .line 326
    .line 327
    move-result-wide v1

    .line 328
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzr(Ljava/lang/Object;JJ)V

    .line 329
    .line 330
    .line 331
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 332
    .line 333
    .line 334
    goto :goto_1

    .line 335
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_2

    .line 340
    .line 341
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzq(Ljava/lang/Object;JI)V

    .line 346
    .line 347
    .line 348
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 349
    .line 350
    .line 351
    goto :goto_1

    .line 352
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_2

    .line 357
    .line 358
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 359
    .line 360
    .line 361
    move-result-wide v1

    .line 362
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzr(Ljava/lang/Object;JJ)V

    .line 363
    .line 364
    .line 365
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 366
    .line 367
    .line 368
    goto :goto_1

    .line 369
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_2

    .line 374
    .line 375
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 376
    .line 377
    .line 378
    move-result-wide v1

    .line 379
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzr(Ljava/lang/Object;JJ)V

    .line 380
    .line 381
    .line 382
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 383
    .line 384
    .line 385
    goto :goto_1

    .line 386
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_2

    .line 391
    .line 392
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzp(Ljava/lang/Object;JF)V

    .line 397
    .line 398
    .line 399
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 400
    .line 401
    .line 402
    goto :goto_1

    .line 403
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzy(Ljava/lang/Object;I)Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_2

    .line 408
    .line 409
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    .line 410
    .line 411
    .line 412
    move-result-wide v1

    .line 413
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzo(Ljava/lang/Object;JD)V

    .line 414
    .line 415
    .line 416
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzva;->zzv(Ljava/lang/Object;I)V

    .line 417
    .line 418
    .line 419
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 424
    .line 425
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzvk;->zzo(Lcom/google/android/gms/internal/cast/zzvz;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    iget-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    .line 429
    .line 430
    if-nez p1, :cond_4

    .line 431
    .line 432
    return-void

    .line 433
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 434
    .line 435
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    .line 436
    .line 437
    .line 438
    const/4 p1, 0x0

    .line 439
    throw p1

    .line 440
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 441
    .line 442
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    const-string v0, "Mutating immutable message: "

    .line 447
    .line 448
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw p2

    .line 456
    nop

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    const/4 v7, 0x1

    .line 8
    iget-boolean v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    .line 9
    .line 10
    if-nez v2, :cond_8

    .line 11
    .line 12
    iget-object v9, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 13
    .line 14
    sget-object v10, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 15
    .line 16
    const v11, 0xfffff

    .line 17
    .line 18
    .line 19
    move v3, v11

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    array-length v5, v9

    .line 23
    if-ge v2, v5, :cond_7

    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget-object v13, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 30
    .line 31
    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    .line 32
    .line 33
    .line 34
    move-result v14

    .line 35
    aget v15, v13, v2

    .line 36
    .line 37
    const/16 v16, 0x0

    .line 38
    .line 39
    const/16 v8, 0x11

    .line 40
    .line 41
    if-gt v14, v8, :cond_2

    .line 42
    .line 43
    add-int/lit8 v8, v2, 0x2

    .line 44
    .line 45
    aget v8, v13, v8

    .line 46
    .line 47
    and-int v13, v8, v11

    .line 48
    .line 49
    if-eq v13, v3, :cond_1

    .line 50
    .line 51
    if-ne v13, v11, :cond_0

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    int-to-long v3, v13

    .line 56
    invoke-virtual {v10, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    move v4, v3

    .line 61
    :goto_1
    move v3, v13

    .line 62
    :cond_1
    ushr-int/lit8 v8, v8, 0x14

    .line 63
    .line 64
    shl-int v8, v7, v8

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/4 v8, 0x0

    .line 68
    :goto_2
    and-int/2addr v5, v11

    .line 69
    int-to-long v11, v5

    .line 70
    packed-switch v14, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_3
    const/4 v14, 0x0

    .line 74
    goto/16 :goto_7

    .line 75
    .line 76
    :pswitch_0
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-interface {v6, v15, v5, v8}, Lcom/google/android/gms/internal/cast/zzwq;->zzp(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :pswitch_1
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_3

    .line 99
    .line 100
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v11

    .line 104
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzB(IJ)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :pswitch_2
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_3

    .line 113
    .line 114
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzz(II)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :pswitch_3
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_3

    .line 127
    .line 128
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 129
    .line 130
    .line 131
    move-result-wide v11

    .line 132
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzx(IJ)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :pswitch_4
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_3

    .line 141
    .line 142
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzv(II)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :pswitch_5
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_3

    .line 155
    .line 156
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzh(II)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :pswitch_6
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_3

    .line 169
    .line 170
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzF(II)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :pswitch_7
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_3

    .line 183
    .line 184
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Lcom/google/android/gms/internal/cast/zzsu;

    .line 189
    .line 190
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzd(ILcom/google/android/gms/internal/cast/zzsu;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :pswitch_8
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_3

    .line 199
    .line 200
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-interface {v6, v15, v5, v8}, Lcom/google/android/gms/internal/cast/zzwq;->zzu(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_3

    .line 212
    .line 213
    :pswitch_9
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_3

    .line 218
    .line 219
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-static {v15, v5, v6}, Lcom/google/android/gms/internal/cast/zzva;->zzE(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :pswitch_a
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_3

    .line 233
    .line 234
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzD(Ljava/lang/Object;J)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzb(IZ)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_3

    .line 242
    .line 243
    :pswitch_b
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v5, :cond_3

    .line 248
    .line 249
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzj(II)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_3

    .line 257
    .line 258
    :pswitch_c
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-eqz v5, :cond_3

    .line 263
    .line 264
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 265
    .line 266
    .line 267
    move-result-wide v11

    .line 268
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzl(IJ)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_3

    .line 272
    .line 273
    :pswitch_d
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_3

    .line 278
    .line 279
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzl(Ljava/lang/Object;J)I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzq(II)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :pswitch_e
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_3

    .line 293
    .line 294
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 295
    .line 296
    .line 297
    move-result-wide v11

    .line 298
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzH(IJ)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_3

    .line 302
    .line 303
    :pswitch_f
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_3

    .line 308
    .line 309
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzp(Ljava/lang/Object;J)J

    .line 310
    .line 311
    .line 312
    move-result-wide v11

    .line 313
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzs(IJ)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :pswitch_10
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_3

    .line 323
    .line 324
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzk(Ljava/lang/Object;J)F

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/cast/zzwq;->zzn(IF)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_3

    .line 332
    .line 333
    :pswitch_11
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-eqz v5, :cond_3

    .line 338
    .line 339
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzva;->zzj(Ljava/lang/Object;J)D

    .line 340
    .line 341
    .line 342
    move-result-wide v11

    .line 343
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzf(ID)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_3

    .line 347
    .line 348
    :pswitch_12
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    if-nez v5, :cond_4

    .line 353
    .line 354
    goto/16 :goto_3

    .line 355
    .line 356
    :cond_4
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzr(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    check-cast v1, Lcom/google/android/gms/internal/cast/zzuq;

    .line 361
    .line 362
    throw v16

    .line 363
    :pswitch_13
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 364
    .line 365
    aget v5, v5, v2

    .line 366
    .line 367
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    check-cast v8, Ljava/util/List;

    .line 372
    .line 373
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    sget v12, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 378
    .line 379
    if-eqz v8, :cond_3

    .line 380
    .line 381
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 382
    .line 383
    .line 384
    move-result v12

    .line 385
    if-nez v12, :cond_3

    .line 386
    .line 387
    const/4 v12, 0x0

    .line 388
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 389
    .line 390
    .line 391
    move-result v14

    .line 392
    if-ge v12, v14, :cond_3

    .line 393
    .line 394
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v14

    .line 398
    move-object v15, v6

    .line 399
    check-cast v15, Lcom/google/android/gms/internal/cast/zztd;

    .line 400
    .line 401
    invoke-virtual {v15, v5, v14, v11}, Lcom/google/android/gms/internal/cast/zztd;->zzp(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    .line 402
    .line 403
    .line 404
    add-int/2addr v12, v7

    .line 405
    goto :goto_4

    .line 406
    :pswitch_14
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 407
    .line 408
    aget v5, v5, v2

    .line 409
    .line 410
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    check-cast v8, Ljava/util/List;

    .line 415
    .line 416
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_3

    .line 420
    .line 421
    :pswitch_15
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 422
    .line 423
    aget v5, v5, v2

    .line 424
    .line 425
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    check-cast v8, Ljava/util/List;

    .line 430
    .line 431
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_3

    .line 435
    .line 436
    :pswitch_16
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 437
    .line 438
    aget v5, v5, v2

    .line 439
    .line 440
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v8

    .line 444
    check-cast v8, Ljava/util/List;

    .line 445
    .line 446
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_3

    .line 450
    .line 451
    :pswitch_17
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 452
    .line 453
    aget v5, v5, v2

    .line 454
    .line 455
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v8

    .line 459
    check-cast v8, Ljava/util/List;

    .line 460
    .line 461
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_3

    .line 465
    .line 466
    :pswitch_18
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 467
    .line 468
    aget v5, v5, v2

    .line 469
    .line 470
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    check-cast v8, Ljava/util/List;

    .line 475
    .line 476
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_3

    .line 480
    .line 481
    :pswitch_19
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 482
    .line 483
    aget v5, v5, v2

    .line 484
    .line 485
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v8

    .line 489
    check-cast v8, Ljava/util/List;

    .line 490
    .line 491
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 492
    .line 493
    .line 494
    goto/16 :goto_3

    .line 495
    .line 496
    :pswitch_1a
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 497
    .line 498
    aget v5, v5, v2

    .line 499
    .line 500
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    check-cast v8, Ljava/util/List;

    .line 505
    .line 506
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_3

    .line 510
    .line 511
    :pswitch_1b
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 512
    .line 513
    aget v5, v5, v2

    .line 514
    .line 515
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v8

    .line 519
    check-cast v8, Ljava/util/List;

    .line 520
    .line 521
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_3

    .line 525
    .line 526
    :pswitch_1c
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 527
    .line 528
    aget v5, v5, v2

    .line 529
    .line 530
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v8

    .line 534
    check-cast v8, Ljava/util/List;

    .line 535
    .line 536
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_3

    .line 540
    .line 541
    :pswitch_1d
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 542
    .line 543
    aget v5, v5, v2

    .line 544
    .line 545
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v8

    .line 549
    check-cast v8, Ljava/util/List;

    .line 550
    .line 551
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_3

    .line 555
    .line 556
    :pswitch_1e
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 557
    .line 558
    aget v5, v5, v2

    .line 559
    .line 560
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v8

    .line 564
    check-cast v8, Ljava/util/List;

    .line 565
    .line 566
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_3

    .line 570
    .line 571
    :pswitch_1f
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 572
    .line 573
    aget v5, v5, v2

    .line 574
    .line 575
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v8

    .line 579
    check-cast v8, Ljava/util/List;

    .line 580
    .line 581
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 582
    .line 583
    .line 584
    goto/16 :goto_3

    .line 585
    .line 586
    :pswitch_20
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 587
    .line 588
    aget v5, v5, v2

    .line 589
    .line 590
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v8

    .line 594
    check-cast v8, Ljava/util/List;

    .line 595
    .line 596
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_3

    .line 600
    .line 601
    :pswitch_21
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 602
    .line 603
    aget v5, v5, v2

    .line 604
    .line 605
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v8

    .line 609
    check-cast v8, Ljava/util/List;

    .line 610
    .line 611
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzvk;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_3

    .line 615
    .line 616
    :pswitch_22
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 617
    .line 618
    aget v5, v5, v2

    .line 619
    .line 620
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v8

    .line 624
    check-cast v8, Ljava/util/List;

    .line 625
    .line 626
    const/4 v14, 0x0

    .line 627
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_7

    .line 631
    .line 632
    :pswitch_23
    const/4 v14, 0x0

    .line 633
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 634
    .line 635
    aget v5, v5, v2

    .line 636
    .line 637
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v8

    .line 641
    check-cast v8, Ljava/util/List;

    .line 642
    .line 643
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_7

    .line 647
    .line 648
    :pswitch_24
    const/4 v14, 0x0

    .line 649
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 650
    .line 651
    aget v5, v5, v2

    .line 652
    .line 653
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v8

    .line 657
    check-cast v8, Ljava/util/List;

    .line 658
    .line 659
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 660
    .line 661
    .line 662
    goto/16 :goto_7

    .line 663
    .line 664
    :pswitch_25
    const/4 v14, 0x0

    .line 665
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 666
    .line 667
    aget v5, v5, v2

    .line 668
    .line 669
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v8

    .line 673
    check-cast v8, Ljava/util/List;

    .line 674
    .line 675
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_7

    .line 679
    .line 680
    :pswitch_26
    const/4 v14, 0x0

    .line 681
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 682
    .line 683
    aget v5, v5, v2

    .line 684
    .line 685
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v8

    .line 689
    check-cast v8, Ljava/util/List;

    .line 690
    .line 691
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 692
    .line 693
    .line 694
    goto/16 :goto_7

    .line 695
    .line 696
    :pswitch_27
    const/4 v14, 0x0

    .line 697
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 698
    .line 699
    aget v5, v5, v2

    .line 700
    .line 701
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v8

    .line 705
    check-cast v8, Ljava/util/List;

    .line 706
    .line 707
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_7

    .line 711
    .line 712
    :pswitch_28
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 713
    .line 714
    aget v5, v5, v2

    .line 715
    .line 716
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v8

    .line 720
    check-cast v8, Ljava/util/List;

    .line 721
    .line 722
    sget v11, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 723
    .line 724
    if-eqz v8, :cond_3

    .line 725
    .line 726
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 727
    .line 728
    .line 729
    move-result v11

    .line 730
    if-nez v11, :cond_3

    .line 731
    .line 732
    invoke-interface {v6, v5, v8}, Lcom/google/android/gms/internal/cast/zzwq;->zze(ILjava/util/List;)V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_3

    .line 736
    .line 737
    :pswitch_29
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 738
    .line 739
    aget v5, v5, v2

    .line 740
    .line 741
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v8

    .line 745
    check-cast v8, Ljava/util/List;

    .line 746
    .line 747
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 748
    .line 749
    .line 750
    move-result-object v11

    .line 751
    sget v12, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 752
    .line 753
    if-eqz v8, :cond_3

    .line 754
    .line 755
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 756
    .line 757
    .line 758
    move-result v12

    .line 759
    if-nez v12, :cond_3

    .line 760
    .line 761
    const/4 v14, 0x0

    .line 762
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 763
    .line 764
    .line 765
    move-result v12

    .line 766
    if-ge v14, v12, :cond_3

    .line 767
    .line 768
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v12

    .line 772
    move-object v15, v6

    .line 773
    check-cast v15, Lcom/google/android/gms/internal/cast/zztd;

    .line 774
    .line 775
    invoke-virtual {v15, v5, v12, v11}, Lcom/google/android/gms/internal/cast/zztd;->zzu(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    .line 776
    .line 777
    .line 778
    add-int/2addr v14, v7

    .line 779
    goto :goto_5

    .line 780
    :pswitch_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 781
    .line 782
    aget v5, v5, v2

    .line 783
    .line 784
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v8

    .line 788
    check-cast v8, Ljava/util/List;

    .line 789
    .line 790
    sget v11, Lcom/google/android/gms/internal/cast/zzvk;->zza:I

    .line 791
    .line 792
    if-eqz v8, :cond_3

    .line 793
    .line 794
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 795
    .line 796
    .line 797
    move-result v11

    .line 798
    if-nez v11, :cond_3

    .line 799
    .line 800
    invoke-interface {v6, v5, v8}, Lcom/google/android/gms/internal/cast/zzwq;->zzE(ILjava/util/List;)V

    .line 801
    .line 802
    .line 803
    goto/16 :goto_3

    .line 804
    .line 805
    :pswitch_2b
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 806
    .line 807
    aget v5, v5, v2

    .line 808
    .line 809
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v8

    .line 813
    check-cast v8, Ljava/util/List;

    .line 814
    .line 815
    const/4 v14, 0x0

    .line 816
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 817
    .line 818
    .line 819
    goto/16 :goto_7

    .line 820
    .line 821
    :pswitch_2c
    const/4 v14, 0x0

    .line 822
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 823
    .line 824
    aget v5, v5, v2

    .line 825
    .line 826
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v8

    .line 830
    check-cast v8, Ljava/util/List;

    .line 831
    .line 832
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 833
    .line 834
    .line 835
    goto/16 :goto_7

    .line 836
    .line 837
    :pswitch_2d
    const/4 v14, 0x0

    .line 838
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 839
    .line 840
    aget v5, v5, v2

    .line 841
    .line 842
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v8

    .line 846
    check-cast v8, Ljava/util/List;

    .line 847
    .line 848
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 849
    .line 850
    .line 851
    goto/16 :goto_7

    .line 852
    .line 853
    :pswitch_2e
    const/4 v14, 0x0

    .line 854
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 855
    .line 856
    aget v5, v5, v2

    .line 857
    .line 858
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v8

    .line 862
    check-cast v8, Ljava/util/List;

    .line 863
    .line 864
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 865
    .line 866
    .line 867
    goto/16 :goto_7

    .line 868
    .line 869
    :pswitch_2f
    const/4 v14, 0x0

    .line 870
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 871
    .line 872
    aget v5, v5, v2

    .line 873
    .line 874
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v8

    .line 878
    check-cast v8, Ljava/util/List;

    .line 879
    .line 880
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 881
    .line 882
    .line 883
    goto/16 :goto_7

    .line 884
    .line 885
    :pswitch_30
    const/4 v14, 0x0

    .line 886
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 887
    .line 888
    aget v5, v5, v2

    .line 889
    .line 890
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v8

    .line 894
    check-cast v8, Ljava/util/List;

    .line 895
    .line 896
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 897
    .line 898
    .line 899
    goto/16 :goto_7

    .line 900
    .line 901
    :pswitch_31
    const/4 v14, 0x0

    .line 902
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 903
    .line 904
    aget v5, v5, v2

    .line 905
    .line 906
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v8

    .line 910
    check-cast v8, Ljava/util/List;

    .line 911
    .line 912
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 913
    .line 914
    .line 915
    goto/16 :goto_7

    .line 916
    .line 917
    :pswitch_32
    const/4 v14, 0x0

    .line 918
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 919
    .line 920
    aget v5, v5, v2

    .line 921
    .line 922
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v8

    .line 926
    check-cast v8, Ljava/util/List;

    .line 927
    .line 928
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/cast/zzvk;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V

    .line 929
    .line 930
    .line 931
    goto/16 :goto_7

    .line 932
    .line 933
    :pswitch_33
    move v5, v8

    .line 934
    const/4 v14, 0x0

    .line 935
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 936
    .line 937
    .line 938
    move-result v5

    .line 939
    if-eqz v5, :cond_6

    .line 940
    .line 941
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v5

    .line 945
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 946
    .line 947
    .line 948
    move-result-object v8

    .line 949
    invoke-interface {v6, v15, v5, v8}, Lcom/google/android/gms/internal/cast/zzwq;->zzp(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    .line 950
    .line 951
    .line 952
    goto/16 :goto_7

    .line 953
    .line 954
    :pswitch_34
    move v5, v8

    .line 955
    const/4 v14, 0x0

    .line 956
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 957
    .line 958
    .line 959
    move-result v5

    .line 960
    if-eqz v5, :cond_5

    .line 961
    .line 962
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 963
    .line 964
    .line 965
    move-result-wide v11

    .line 966
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzB(IJ)V

    .line 967
    .line 968
    .line 969
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    .line 970
    .line 971
    goto/16 :goto_7

    .line 972
    .line 973
    :pswitch_35
    move v5, v8

    .line 974
    const/4 v14, 0x0

    .line 975
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 976
    .line 977
    .line 978
    move-result v5

    .line 979
    if-eqz v5, :cond_5

    .line 980
    .line 981
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 982
    .line 983
    .line 984
    move-result v0

    .line 985
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzz(II)V

    .line 986
    .line 987
    .line 988
    goto :goto_6

    .line 989
    :pswitch_36
    move v5, v8

    .line 990
    const/4 v14, 0x0

    .line 991
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 992
    .line 993
    .line 994
    move-result v5

    .line 995
    if-eqz v5, :cond_5

    .line 996
    .line 997
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 998
    .line 999
    .line 1000
    move-result-wide v11

    .line 1001
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzx(IJ)V

    .line 1002
    .line 1003
    .line 1004
    goto :goto_6

    .line 1005
    :pswitch_37
    move v5, v8

    .line 1006
    const/4 v14, 0x0

    .line 1007
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v5

    .line 1011
    if-eqz v5, :cond_5

    .line 1012
    .line 1013
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1014
    .line 1015
    .line 1016
    move-result v0

    .line 1017
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzv(II)V

    .line 1018
    .line 1019
    .line 1020
    goto :goto_6

    .line 1021
    :pswitch_38
    move v5, v8

    .line 1022
    const/4 v14, 0x0

    .line 1023
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v5

    .line 1027
    if-eqz v5, :cond_5

    .line 1028
    .line 1029
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1030
    .line 1031
    .line 1032
    move-result v0

    .line 1033
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzh(II)V

    .line 1034
    .line 1035
    .line 1036
    goto :goto_6

    .line 1037
    :pswitch_39
    move v5, v8

    .line 1038
    const/4 v14, 0x0

    .line 1039
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v5

    .line 1043
    if-eqz v5, :cond_5

    .line 1044
    .line 1045
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1046
    .line 1047
    .line 1048
    move-result v0

    .line 1049
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzF(II)V

    .line 1050
    .line 1051
    .line 1052
    goto :goto_6

    .line 1053
    :pswitch_3a
    move v5, v8

    .line 1054
    const/4 v14, 0x0

    .line 1055
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v5

    .line 1059
    if-eqz v5, :cond_5

    .line 1060
    .line 1061
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    check-cast v0, Lcom/google/android/gms/internal/cast/zzsu;

    .line 1066
    .line 1067
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzd(ILcom/google/android/gms/internal/cast/zzsu;)V

    .line 1068
    .line 1069
    .line 1070
    goto :goto_6

    .line 1071
    :pswitch_3b
    move v5, v8

    .line 1072
    const/4 v14, 0x0

    .line 1073
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v5

    .line 1077
    if-eqz v5, :cond_6

    .line 1078
    .line 1079
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v5

    .line 1083
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v8

    .line 1087
    invoke-interface {v6, v15, v5, v8}, Lcom/google/android/gms/internal/cast/zzwq;->zzu(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V

    .line 1088
    .line 1089
    .line 1090
    goto/16 :goto_7

    .line 1091
    .line 1092
    :pswitch_3c
    move v5, v8

    .line 1093
    const/4 v14, 0x0

    .line 1094
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1095
    .line 1096
    .line 1097
    move-result v5

    .line 1098
    if-eqz v5, :cond_5

    .line 1099
    .line 1100
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    invoke-static {v15, v0, v6}, Lcom/google/android/gms/internal/cast/zzva;->zzE(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V

    .line 1105
    .line 1106
    .line 1107
    goto/16 :goto_6

    .line 1108
    .line 1109
    :pswitch_3d
    move v5, v8

    .line 1110
    const/4 v14, 0x0

    .line 1111
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1112
    .line 1113
    .line 1114
    move-result v5

    .line 1115
    if-eqz v5, :cond_5

    .line 1116
    .line 1117
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    .line 1118
    .line 1119
    .line 1120
    move-result v0

    .line 1121
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzb(IZ)V

    .line 1122
    .line 1123
    .line 1124
    goto/16 :goto_6

    .line 1125
    .line 1126
    :pswitch_3e
    move v5, v8

    .line 1127
    const/4 v14, 0x0

    .line 1128
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v5

    .line 1132
    if-eqz v5, :cond_5

    .line 1133
    .line 1134
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1135
    .line 1136
    .line 1137
    move-result v0

    .line 1138
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzj(II)V

    .line 1139
    .line 1140
    .line 1141
    goto/16 :goto_6

    .line 1142
    .line 1143
    :pswitch_3f
    move v5, v8

    .line 1144
    const/4 v14, 0x0

    .line 1145
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v5

    .line 1149
    if-eqz v5, :cond_5

    .line 1150
    .line 1151
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1152
    .line 1153
    .line 1154
    move-result-wide v11

    .line 1155
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzl(IJ)V

    .line 1156
    .line 1157
    .line 1158
    goto/16 :goto_6

    .line 1159
    .line 1160
    :pswitch_40
    move v5, v8

    .line 1161
    const/4 v14, 0x0

    .line 1162
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1163
    .line 1164
    .line 1165
    move-result v5

    .line 1166
    if-eqz v5, :cond_5

    .line 1167
    .line 1168
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1169
    .line 1170
    .line 1171
    move-result v0

    .line 1172
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzq(II)V

    .line 1173
    .line 1174
    .line 1175
    goto/16 :goto_6

    .line 1176
    .line 1177
    :pswitch_41
    move v5, v8

    .line 1178
    const/4 v14, 0x0

    .line 1179
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v5

    .line 1183
    if-eqz v5, :cond_5

    .line 1184
    .line 1185
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1186
    .line 1187
    .line 1188
    move-result-wide v11

    .line 1189
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzH(IJ)V

    .line 1190
    .line 1191
    .line 1192
    goto/16 :goto_6

    .line 1193
    .line 1194
    :pswitch_42
    move v5, v8

    .line 1195
    const/4 v14, 0x0

    .line 1196
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v5

    .line 1200
    if-eqz v5, :cond_5

    .line 1201
    .line 1202
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1203
    .line 1204
    .line 1205
    move-result-wide v11

    .line 1206
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzs(IJ)V

    .line 1207
    .line 1208
    .line 1209
    goto/16 :goto_6

    .line 1210
    .line 1211
    :pswitch_43
    move v5, v8

    .line 1212
    const/4 v14, 0x0

    .line 1213
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v5

    .line 1217
    if-eqz v5, :cond_5

    .line 1218
    .line 1219
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    .line 1220
    .line 1221
    .line 1222
    move-result v0

    .line 1223
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/cast/zzwq;->zzn(IF)V

    .line 1224
    .line 1225
    .line 1226
    goto/16 :goto_6

    .line 1227
    .line 1228
    :pswitch_44
    move v5, v8

    .line 1229
    const/4 v14, 0x0

    .line 1230
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v5

    .line 1234
    if-eqz v5, :cond_6

    .line 1235
    .line 1236
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    .line 1237
    .line 1238
    .line 1239
    move-result-wide v11

    .line 1240
    invoke-interface {v6, v15, v11, v12}, Lcom/google/android/gms/internal/cast/zzwq;->zzf(ID)V

    .line 1241
    .line 1242
    .line 1243
    :cond_6
    :goto_7
    add-int/lit8 v2, v2, 0x3

    .line 1244
    .line 1245
    const v11, 0xfffff

    .line 1246
    .line 1247
    .line 1248
    goto/16 :goto_0

    .line 1249
    .line 1250
    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 1251
    .line 1252
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v1

    .line 1256
    invoke-virtual {v2, v1, v6}, Lcom/google/android/gms/internal/cast/zzvz;->zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V

    .line 1257
    .line 1258
    .line 1259
    return-void

    .line 1260
    :cond_8
    const/16 v16, 0x0

    .line 1261
    .line 1262
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 1263
    .line 1264
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    .line 1265
    .line 1266
    .line 1267
    throw v16

    .line 1268
    nop

    .line 1269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
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
        :pswitch_19
        :pswitch_18
        :pswitch_17
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

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const v3, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v4, v2, v3

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-long v4, v4

    .line 22
    packed-switch v2, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzm(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    and-int/2addr v2, v3

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v6, v2, :cond_1

    .line 42
    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_1
    if-nez v2, :cond_0

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    cmp-long v2, v2, v4

    .line 125
    .line 126
    if-nez v2, :cond_1

    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_1

    .line 135
    .line 136
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ne v2, v3, :cond_1

    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_1

    .line 153
    .line 154
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    cmp-long v2, v2, v4

    .line 163
    .line 164
    if-nez v2, :cond_1

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_1

    .line 173
    .line 174
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v2, v3, :cond_1

    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_1

    .line 191
    .line 192
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ne v2, v3, :cond_1

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_1

    .line 209
    .line 210
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-ne v2, v3, :cond_1

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_1

    .line 227
    .line 228
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_1

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_1

    .line 249
    .line 250
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_1

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_1

    .line 271
    .line 272
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzvk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_1

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_1

    .line 293
    .line 294
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzw(Ljava/lang/Object;J)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-ne v2, v3, :cond_1

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_1

    .line 311
    .line 312
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-ne v2, v3, :cond_1

    .line 321
    .line 322
    goto/16 :goto_2

    .line 323
    .line 324
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_1

    .line 329
    .line 330
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 335
    .line 336
    .line 337
    move-result-wide v4

    .line 338
    cmp-long v2, v2, v4

    .line 339
    .line 340
    if-nez v2, :cond_1

    .line 341
    .line 342
    goto :goto_2

    .line 343
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eqz v2, :cond_1

    .line 348
    .line 349
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzc(Ljava/lang/Object;J)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-ne v2, v3, :cond_1

    .line 358
    .line 359
    goto :goto_2

    .line 360
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-eqz v2, :cond_1

    .line 365
    .line 366
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 367
    .line 368
    .line 369
    move-result-wide v2

    .line 370
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 371
    .line 372
    .line 373
    move-result-wide v4

    .line 374
    cmp-long v2, v2, v4

    .line 375
    .line 376
    if-nez v2, :cond_1

    .line 377
    .line 378
    goto :goto_2

    .line 379
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_1

    .line 384
    .line 385
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 386
    .line 387
    .line 388
    move-result-wide v2

    .line 389
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzd(Ljava/lang/Object;J)J

    .line 390
    .line 391
    .line 392
    move-result-wide v4

    .line 393
    cmp-long v2, v2, v4

    .line 394
    .line 395
    if-nez v2, :cond_1

    .line 396
    .line 397
    goto :goto_2

    .line 398
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-eqz v2, :cond_1

    .line 403
    .line 404
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zzb(Ljava/lang/Object;J)F

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-ne v2, v3, :cond_1

    .line 421
    .line 422
    goto :goto_2

    .line 423
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/zzva;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-eqz v2, :cond_1

    .line 428
    .line 429
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    .line 430
    .line 431
    .line 432
    move-result-wide v2

    .line 433
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 434
    .line 435
    .line 436
    move-result-wide v2

    .line 437
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/cast/zzwj;->zza(Ljava/lang/Object;J)D

    .line 438
    .line 439
    .line 440
    move-result-wide v4

    .line 441
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 442
    .line 443
    .line 444
    move-result-wide v4

    .line 445
    cmp-long v2, v2, v4

    .line 446
    .line 447
    if-nez v2, :cond_1

    .line 448
    .line 449
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_1
    :goto_3
    return v0

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 455
    .line 456
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzj:Lcom/google/android/gms/internal/cast/zzvz;

    .line 461
    .line 462
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-nez v1, :cond_3

    .line 471
    .line 472
    return v0

    .line 473
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    .line 474
    .line 475
    if-nez v0, :cond_4

    .line 476
    .line 477
    const/4 p1, 0x1

    .line 478
    return p1

    .line 479
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 480
    .line 481
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    .line 482
    .line 483
    .line 484
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 485
    .line 486
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    .line 487
    .line 488
    .line 489
    const/4 p1, 0x0

    .line 490
    throw p1

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;)Z
    .locals 15

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const v7, 0xfffff

    .line 5
    .line 6
    .line 7
    move v2, v6

    .line 8
    move v8, v2

    .line 9
    move v0, v7

    .line 10
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/cast/zzva;->zzh:I

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ge v8, v3, :cond_b

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzva;->zzg:[I

    .line 17
    .line 18
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 19
    .line 20
    aget v3, v3, v8

    .line 21
    .line 22
    aget v10, v5, v3

    .line 23
    .line 24
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/cast/zzva;->zzo(I)I

    .line 25
    .line 26
    .line 27
    move-result v11

    .line 28
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzva;->zzc:[I

    .line 29
    .line 30
    add-int/lit8 v12, v3, 0x2

    .line 31
    .line 32
    aget v5, v5, v12

    .line 33
    .line 34
    and-int v12, v5, v7

    .line 35
    .line 36
    ushr-int/lit8 v5, v5, 0x14

    .line 37
    .line 38
    shl-int v5, v4, v5

    .line 39
    .line 40
    if-eq v12, v0, :cond_1

    .line 41
    .line 42
    if-eq v12, v7, :cond_0

    .line 43
    .line 44
    int-to-long v13, v12

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/cast/zzva;->zzb:Lsun/misc/Unsafe;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :cond_0
    move v4, v2

    .line 52
    move v0, v12

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v4, v2

    .line 55
    :goto_1
    const/high16 v2, 0x10000000

    .line 56
    .line 57
    and-int/2addr v2, v11

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    move v2, v3

    .line 61
    move v3, v0

    .line 62
    move-object v0, p0

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-eqz v12, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    return v6

    .line 71
    :cond_3
    move v2, v3

    .line 72
    move v3, v0

    .line 73
    :goto_2
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/zzva;->zzn(I)I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    const/16 v13, 0x9

    .line 78
    .line 79
    if-eq v12, v13, :cond_9

    .line 80
    .line 81
    const/16 v13, 0x11

    .line 82
    .line 83
    if-eq v12, v13, :cond_9

    .line 84
    .line 85
    const/16 v5, 0x1b

    .line 86
    .line 87
    if-eq v12, v5, :cond_7

    .line 88
    .line 89
    const/16 v5, 0x3c

    .line 90
    .line 91
    if-eq v12, v5, :cond_6

    .line 92
    .line 93
    const/16 v5, 0x44

    .line 94
    .line 95
    if-eq v12, v5, :cond_6

    .line 96
    .line 97
    const/16 v5, 0x31

    .line 98
    .line 99
    if-eq v12, v5, :cond_7

    .line 100
    .line 101
    const/16 v5, 0x32

    .line 102
    .line 103
    if-eq v12, v5, :cond_4

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    and-int v5, v11, v7

    .line 107
    .line 108
    int-to-long v10, v5

    .line 109
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Lcom/google/android/gms/internal/cast/zzur;

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_5
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzr(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/google/android/gms/internal/cast/zzuq;

    .line 127
    .line 128
    throw v9

    .line 129
    :cond_6
    invoke-direct {p0, v1, v10, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzC(Ljava/lang/Object;II)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_a

    .line 134
    .line 135
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v1, v11, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzA(Ljava/lang/Object;ILcom/google/android/gms/internal/cast/zzvi;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_a

    .line 144
    .line 145
    return v6

    .line 146
    :cond_7
    and-int v5, v11, v7

    .line 147
    .line 148
    int-to-long v9, v5

    .line 149
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-nez v9, :cond_a

    .line 160
    .line 161
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    move v9, v6

    .line 166
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-ge v9, v10, :cond_a

    .line 171
    .line 172
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/cast/zzvi;->zzh(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-nez v10, :cond_8

    .line 181
    .line 182
    return v6

    .line 183
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_9
    move-object v0, p0

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzva;->zzz(Ljava/lang/Object;IIII)Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_a

    .line 192
    .line 193
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzq(I)Lcom/google/android/gms/internal/cast/zzvi;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v1, v11, v2}, Lcom/google/android/gms/internal/cast/zzva;->zzA(Ljava/lang/Object;ILcom/google/android/gms/internal/cast/zzvi;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_a

    .line 202
    .line 203
    return v6

    .line 204
    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 205
    .line 206
    move v0, v3

    .line 207
    move v2, v4

    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_b
    iget-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzf:Z

    .line 211
    .line 212
    if-nez v2, :cond_c

    .line 213
    .line 214
    return v4

    .line 215
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzva;->zzk:Lcom/google/android/gms/internal/cast/zztf;

    .line 216
    .line 217
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    .line 218
    .line 219
    .line 220
    throw v9
.end method
