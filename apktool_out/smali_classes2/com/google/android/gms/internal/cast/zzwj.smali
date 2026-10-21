.class final Lcom/google/android/gms/internal/cast/zzwj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:J

.field static final zzb:Z

.field private static final zzc:Lsun/misc/Unsafe;

.field private static final zzd:Ljava/lang/Class;

.field private static final zze:Z

.field private static final zzf:Lcom/google/android/gms/internal/cast/zzwi;

.field private static final zzg:Z

.field private static final zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-class v4, Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzwj;->zzg()Lsun/misc/Unsafe;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    sput-object v5, Lcom/google/android/gms/internal/cast/zzwj;->zzc:Lsun/misc/Unsafe;

    .line 12
    .line 13
    sget v6, Lcom/google/android/gms/internal/cast/zzsj;->zza:I

    .line 14
    .line 15
    const-class v6, Llibcore/io/Memory;

    .line 16
    .line 17
    sput-object v6, Lcom/google/android/gms/internal/cast/zzwj;->zzd:Ljava/lang/Class;

    .line 18
    .line 19
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-static {v6}, Lcom/google/android/gms/internal/cast/zzwj;->zzv(Ljava/lang/Class;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    sput-boolean v7, Lcom/google/android/gms/internal/cast/zzwj;->zze:Z

    .line 26
    .line 27
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-static {v8}, Lcom/google/android/gms/internal/cast/zzwj;->zzv(Ljava/lang/Class;)Z

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    const/4 v10, 0x0

    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-eqz v7, :cond_1

    .line 38
    .line 39
    new-instance v10, Lcom/google/android/gms/internal/cast/zzwh;

    .line 40
    .line 41
    invoke-direct {v10, v5}, Lcom/google/android/gms/internal/cast/zzwh;-><init>(Lsun/misc/Unsafe;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-eqz v9, :cond_2

    .line 46
    .line 47
    new-instance v10, Lcom/google/android/gms/internal/cast/zzwg;

    .line 48
    .line 49
    invoke-direct {v10, v5}, Lcom/google/android/gms/internal/cast/zzwg;-><init>(Lsun/misc/Unsafe;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    sput-object v10, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 53
    .line 54
    const-string v5, "getLong"

    .line 55
    .line 56
    const-class v7, Ljava/lang/reflect/Field;

    .line 57
    .line 58
    const-string v9, "objectFieldOffset"

    .line 59
    .line 60
    const-class v11, Ljava/lang/Object;

    .line 61
    .line 62
    if-nez v10, :cond_3

    .line 63
    .line 64
    :goto_1
    move v10, v2

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    iget-object v10, v10, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 67
    .line 68
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    new-array v12, v3, [Ljava/lang/Class;

    .line 73
    .line 74
    aput-object v7, v12, v2

    .line 75
    .line 76
    invoke-virtual {v10, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    .line 78
    .line 79
    new-array v12, v1, [Ljava/lang/Class;

    .line 80
    .line 81
    aput-object v11, v12, v2

    .line 82
    .line 83
    aput-object v6, v12, v3

    .line 84
    .line 85
    invoke-virtual {v10, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzwj;->zzB()Ljava/lang/reflect/Field;

    .line 89
    .line 90
    .line 91
    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    if-nez v10, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    move v10, v3

    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception v10

    .line 98
    invoke-static {v10}, Lcom/google/android/gms/internal/cast/zzwj;->zzh(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :goto_2
    sput-boolean v10, Lcom/google/android/gms/internal/cast/zzwj;->zzg:Z

    .line 103
    .line 104
    sget-object v10, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 105
    .line 106
    if-nez v10, :cond_5

    .line 107
    .line 108
    :goto_3
    move v0, v2

    .line 109
    goto :goto_4

    .line 110
    :cond_5
    iget-object v10, v10, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 111
    .line 112
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    new-array v12, v3, [Ljava/lang/Class;

    .line 117
    .line 118
    aput-object v7, v12, v2

    .line 119
    .line 120
    invoke-virtual {v10, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 121
    .line 122
    .line 123
    const-string v7, "arrayBaseOffset"

    .line 124
    .line 125
    new-array v9, v3, [Ljava/lang/Class;

    .line 126
    .line 127
    aput-object v4, v9, v2

    .line 128
    .line 129
    invoke-virtual {v10, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 130
    .line 131
    .line 132
    const-string v7, "arrayIndexScale"

    .line 133
    .line 134
    new-array v9, v3, [Ljava/lang/Class;

    .line 135
    .line 136
    aput-object v4, v9, v2

    .line 137
    .line 138
    invoke-virtual {v10, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 139
    .line 140
    .line 141
    const-string v4, "getInt"

    .line 142
    .line 143
    new-array v7, v1, [Ljava/lang/Class;

    .line 144
    .line 145
    aput-object v11, v7, v2

    .line 146
    .line 147
    aput-object v6, v7, v3

    .line 148
    .line 149
    invoke-virtual {v10, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 150
    .line 151
    .line 152
    const-string v4, "putInt"

    .line 153
    .line 154
    new-array v7, v0, [Ljava/lang/Class;

    .line 155
    .line 156
    aput-object v11, v7, v2

    .line 157
    .line 158
    aput-object v6, v7, v3

    .line 159
    .line 160
    aput-object v8, v7, v1

    .line 161
    .line 162
    invoke-virtual {v10, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 163
    .line 164
    .line 165
    new-array v4, v1, [Ljava/lang/Class;

    .line 166
    .line 167
    aput-object v11, v4, v2

    .line 168
    .line 169
    aput-object v6, v4, v3

    .line 170
    .line 171
    invoke-virtual {v10, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 172
    .line 173
    .line 174
    const-string v4, "putLong"

    .line 175
    .line 176
    new-array v5, v0, [Ljava/lang/Class;

    .line 177
    .line 178
    aput-object v11, v5, v2

    .line 179
    .line 180
    aput-object v6, v5, v3

    .line 181
    .line 182
    aput-object v6, v5, v1

    .line 183
    .line 184
    invoke-virtual {v10, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 185
    .line 186
    .line 187
    const-string v4, "getObject"

    .line 188
    .line 189
    new-array v5, v1, [Ljava/lang/Class;

    .line 190
    .line 191
    aput-object v11, v5, v2

    .line 192
    .line 193
    aput-object v6, v5, v3

    .line 194
    .line 195
    invoke-virtual {v10, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 196
    .line 197
    .line 198
    const-string v4, "putObject"

    .line 199
    .line 200
    new-array v0, v0, [Ljava/lang/Class;

    .line 201
    .line 202
    aput-object v11, v0, v2

    .line 203
    .line 204
    aput-object v6, v0, v3

    .line 205
    .line 206
    aput-object v11, v0, v1

    .line 207
    .line 208
    invoke-virtual {v10, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    .line 210
    .line 211
    move v0, v3

    .line 212
    goto :goto_4

    .line 213
    :catchall_1
    move-exception v0

    .line 214
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzh(Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :goto_4
    sput-boolean v0, Lcom/google/android/gms/internal/cast/zzwj;->zzh:Z

    .line 219
    .line 220
    const-class v0, [B

    .line 221
    .line 222
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzz(Ljava/lang/Class;)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    int-to-long v0, v0

    .line 227
    sput-wide v0, Lcom/google/android/gms/internal/cast/zzwj;->zza:J

    .line 228
    .line 229
    const-class v0, [Z

    .line 230
    .line 231
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzz(Ljava/lang/Class;)I

    .line 232
    .line 233
    .line 234
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzA(Ljava/lang/Class;)I

    .line 235
    .line 236
    .line 237
    const-class v0, [I

    .line 238
    .line 239
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzz(Ljava/lang/Class;)I

    .line 240
    .line 241
    .line 242
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzA(Ljava/lang/Class;)I

    .line 243
    .line 244
    .line 245
    const-class v0, [J

    .line 246
    .line 247
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzz(Ljava/lang/Class;)I

    .line 248
    .line 249
    .line 250
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzA(Ljava/lang/Class;)I

    .line 251
    .line 252
    .line 253
    const-class v0, [F

    .line 254
    .line 255
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzz(Ljava/lang/Class;)I

    .line 256
    .line 257
    .line 258
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzA(Ljava/lang/Class;)I

    .line 259
    .line 260
    .line 261
    const-class v0, [D

    .line 262
    .line 263
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzz(Ljava/lang/Class;)I

    .line 264
    .line 265
    .line 266
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzA(Ljava/lang/Class;)I

    .line 267
    .line 268
    .line 269
    const-class v0, [Ljava/lang/Object;

    .line 270
    .line 271
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzz(Ljava/lang/Class;)I

    .line 272
    .line 273
    .line 274
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzA(Ljava/lang/Class;)I

    .line 275
    .line 276
    .line 277
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzwj;->zzB()Ljava/lang/reflect/Field;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    if-eqz v0, :cond_6

    .line 282
    .line 283
    sget-object v1, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 284
    .line 285
    if-eqz v1, :cond_6

    .line 286
    .line 287
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 288
    .line 289
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 290
    .line 291
    .line 292
    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 297
    .line 298
    if-ne v0, v1, :cond_7

    .line 299
    .line 300
    move v2, v3

    .line 301
    :cond_7
    sput-boolean v2, Lcom/google/android/gms/internal/cast/zzwj;->zzb:Z

    .line 302
    .line 303
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzA(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/cast/zzwj;->zzh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method private static zzB()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/cast/zzsj;->zza:I

    .line 2
    .line 3
    const-string v0, "effectiveDirectAddress"

    .line 4
    .line 5
    const-class v1, Ljava/nio/Buffer;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, "address"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :cond_1
    return-object v0
.end method

.method private static zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method private static zzD(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v2, -0x4

    .line 6
    .line 7
    and-long/2addr v2, p1

    .line 8
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    long-to-int p1, p1

    .line 13
    not-int p1, p1

    .line 14
    and-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    shl-int/lit8 p1, p1, 0x3

    .line 17
    .line 18
    const/16 p2, 0xff

    .line 19
    .line 20
    shl-int v4, p2, p1

    .line 21
    .line 22
    not-int v4, v4

    .line 23
    and-int/2addr v1, v4

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 25
    .line 26
    and-int/2addr p2, p3

    .line 27
    shl-int p1, p2, p1

    .line 28
    .line 29
    or-int/2addr p1, v1

    .line 30
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static zzE(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v2, -0x4

    .line 6
    .line 7
    and-long/2addr v2, p1

    .line 8
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    long-to-int p1, p1

    .line 13
    and-int/lit8 p1, p1, 0x3

    .line 14
    .line 15
    shl-int/lit8 p1, p1, 0x3

    .line 16
    .line 17
    const/16 p2, 0xff

    .line 18
    .line 19
    shl-int v4, p2, p1

    .line 20
    .line 21
    not-int v4, v4

    .line 22
    and-int/2addr v1, v4

    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 24
    .line 25
    and-int/2addr p2, p3

    .line 26
    shl-int p1, p2, p1

    .line 27
    .line 28
    or-int/2addr p1, v1

    .line 29
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static zza(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwi;->zza(Ljava/lang/Object;J)D

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static zzb(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwi;->zzb(Ljava/lang/Object;J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static zzc(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static zzd(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static zze(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzc:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public static zzf(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static zzg()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zzwf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzwf;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :catchall_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public static bridge synthetic zzh(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/cast/zzwj;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    .line 18
    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v2, "com.google.protobuf.UnsafeUtil"

    .line 24
    .line 25
    const-string v3, "logMissingMethod"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic zzi(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzwj;->zzD(Ljava/lang/Object;JB)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic zzj(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzwj;->zzE(Ljava/lang/Object;JB)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzk(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzwj;->zzD(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static bridge synthetic zzl(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzwj;->zzE(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static zzm(Ljava/lang/Object;JZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzwi;->zzc(Ljava/lang/Object;JZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static zzn([BJB)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    sget-wide v1, Lcom/google/android/gms/internal/cast/zzwj;->zza:J

    .line 4
    .line 5
    add-long/2addr v1, p1

    .line 6
    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/cast/zzwi;->zzd(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static zzo(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzwi;->zze(Ljava/lang/Object;JD)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static zzp(Ljava/lang/Object;JF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzwi;->zzf(Ljava/lang/Object;JF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static zzq(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static zzr(Ljava/lang/Object;JJ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move-wide v3, p1

    .line 7
    move-wide v5, p3

    .line 8
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static zzs(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static bridge synthetic zzt(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v1, -0x4

    .line 6
    .line 7
    and-long/2addr v1, p1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    not-long p1, p1

    .line 13
    const-wide/16 v0, 0x3

    .line 14
    .line 15
    and-long/2addr p1, v0

    .line 16
    const/4 v0, 0x3

    .line 17
    shl-long/2addr p1, v0

    .line 18
    long-to-int p1, p1

    .line 19
    ushr-int/2addr p0, p1

    .line 20
    and-int/lit16 p0, p0, 0xff

    .line 21
    .line 22
    int-to-byte p0, p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public static bridge synthetic zzu(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v1, -0x4

    .line 6
    .line 7
    and-long/2addr v1, p1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const-wide/16 v0, 0x3

    .line 13
    .line 14
    and-long/2addr p1, v0

    .line 15
    const/4 v0, 0x3

    .line 16
    shl-long/2addr p1, v0

    .line 17
    long-to-int p1, p1

    .line 18
    ushr-int/2addr p0, p1

    .line 19
    and-int/lit16 p0, p0, 0xff

    .line 20
    .line 21
    int-to-byte p0, p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static zzv(Ljava/lang/Class;)Z
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    const-class v5, [B

    .line 7
    .line 8
    sget v6, Lcom/google/android/gms/internal/cast/zzsj;->zza:I

    .line 9
    .line 10
    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/cast/zzwj;->zzd:Ljava/lang/Class;

    .line 11
    .line 12
    const-string v7, "peekLong"

    .line 13
    .line 14
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    new-array v9, v2, [Ljava/lang/Class;

    .line 17
    .line 18
    aput-object p0, v9, v4

    .line 19
    .line 20
    aput-object v8, v9, v3

    .line 21
    .line 22
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    const-string v7, "pokeLong"

    .line 26
    .line 27
    new-array v9, v1, [Ljava/lang/Class;

    .line 28
    .line 29
    aput-object p0, v9, v4

    .line 30
    .line 31
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    aput-object v10, v9, v3

    .line 34
    .line 35
    aput-object v8, v9, v2

    .line 36
    .line 37
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    const-string v7, "pokeInt"

    .line 41
    .line 42
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    new-array v10, v1, [Ljava/lang/Class;

    .line 45
    .line 46
    aput-object p0, v10, v4

    .line 47
    .line 48
    aput-object v9, v10, v3

    .line 49
    .line 50
    aput-object v8, v10, v2

    .line 51
    .line 52
    invoke-virtual {v6, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    const-string v7, "peekInt"

    .line 56
    .line 57
    new-array v10, v2, [Ljava/lang/Class;

    .line 58
    .line 59
    aput-object p0, v10, v4

    .line 60
    .line 61
    aput-object v8, v10, v3

    .line 62
    .line 63
    invoke-virtual {v6, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    const-string v7, "pokeByte"

    .line 67
    .line 68
    new-array v8, v2, [Ljava/lang/Class;

    .line 69
    .line 70
    aput-object p0, v8, v4

    .line 71
    .line 72
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    aput-object v10, v8, v3

    .line 75
    .line 76
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    .line 78
    .line 79
    const-string v7, "peekByte"

    .line 80
    .line 81
    new-array v8, v3, [Ljava/lang/Class;

    .line 82
    .line 83
    aput-object p0, v8, v4

    .line 84
    .line 85
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    .line 87
    .line 88
    const-string v7, "pokeByteArray"

    .line 89
    .line 90
    new-array v8, v0, [Ljava/lang/Class;

    .line 91
    .line 92
    aput-object p0, v8, v4

    .line 93
    .line 94
    aput-object v5, v8, v3

    .line 95
    .line 96
    aput-object v9, v8, v2

    .line 97
    .line 98
    aput-object v9, v8, v1

    .line 99
    .line 100
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    .line 102
    .line 103
    const-string v7, "peekByteArray"

    .line 104
    .line 105
    new-array v0, v0, [Ljava/lang/Class;

    .line 106
    .line 107
    aput-object p0, v0, v4

    .line 108
    .line 109
    aput-object v5, v0, v3

    .line 110
    .line 111
    aput-object v9, v0, v2

    .line 112
    .line 113
    aput-object v9, v0, v1

    .line 114
    .line 115
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    return v3

    .line 119
    :catchall_0
    return v4
.end method

.method public static zzw(Ljava/lang/Object;J)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzwi;->zzg(Ljava/lang/Object;J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static zzx()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/cast/zzwj;->zzh:Z

    return v0
.end method

.method public static zzy()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/cast/zzwj;->zzg:Z

    return v0
.end method

.method private static zzz(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/cast/zzwj;->zzh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwj;->zzf:Lcom/google/android/gms/internal/cast/zzwi;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzwi;->zza:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method
