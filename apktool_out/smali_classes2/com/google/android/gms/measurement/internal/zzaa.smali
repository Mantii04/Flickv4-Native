.class final Lcom/google/android/gms/measurement/internal/zzaa;
.super Lcom/google/android/gms/measurement/internal/zzab;
.source "SourceFile"


# instance fields
.field public final g:Lcom/google/android/gms/internal/measurement/zzfh$zze;

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/zzs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzs;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfh$zze;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->h:Lcom/google/android/gms/measurement/internal/zzs;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/internal/measurement/zzfh$zze;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/internal/measurement/zzfh$zze;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zza()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final h(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzft$zzn;Z)Z
    .locals 14

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzou;->zza()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzaa;->h:Lcom/google/android/gms/measurement/internal/zzs;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->g0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 18
    .line 19
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v1

    .line 28
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/internal/measurement/zzfh$zze;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzf()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzg()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzh()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    if-nez v6, :cond_2

    .line 45
    .line 46
    if-eqz v7, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v5, v1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    move v5, v2

    .line 52
    :goto_2
    const/4 v6, 0x0

    .line 53
    if-eqz p4, :cond_4

    .line 54
    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzab;->b:I

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzi()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zza()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    :cond_3
    const-string v1, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 86
    .line 87
    invoke-virtual {p1, v1, v0, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return v2

    .line 91
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzb()Lcom/google/android/gms/internal/measurement/zzfh$zzc;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfh$zzc;->zzf()Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzk()Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_6

    .line 104
    .line 105
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfh$zzc;->zzh()Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-nez v10, :cond_5

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzg()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    const-string v10, "No number filter for long property. property"

    .line 132
    .line 133
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_4

    .line 137
    .line 138
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzc()J

    .line 139
    .line 140
    .line 141
    move-result-wide v10

    .line 142
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfh$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzfh$zzd;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-static {v10, v11, v6}, Lcom/google/android/gms/measurement/internal/zzab;->b(JLcom/google/android/gms/internal/measurement/zzfh$zzd;)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6, v9}, Lcom/google/android/gms/measurement/internal/zzab;->c(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzi()Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-eqz v10, :cond_8

    .line 161
    .line 162
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfh$zzc;->zzh()Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-nez v10, :cond_7

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzg()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    const-string v10, "No number filter for double property. property"

    .line 189
    .line 190
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_4

    .line 194
    .line 195
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zza()D

    .line 196
    .line 197
    .line 198
    move-result-wide v10

    .line 199
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfh$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzfh$zzd;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    :try_start_0
    new-instance v12, Ljava/math/BigDecimal;

    .line 204
    .line 205
    invoke-direct {v12, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    .line 206
    .line 207
    .line 208
    invoke-static {v10, v11}, Ljava/lang/Math;->ulp(D)D

    .line 209
    .line 210
    .line 211
    move-result-wide v10

    .line 212
    invoke-static {v12, v8, v10, v11}, Lcom/google/android/gms/measurement/internal/zzab;->e(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzfh$zzd;D)Ljava/lang/Boolean;

    .line 213
    .line 214
    .line 215
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :catch_0
    invoke-static {v6, v9}, Lcom/google/android/gms/measurement/internal/zzab;->c(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    goto/16 :goto_4

    .line 221
    .line 222
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzm()Z

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    if-eqz v10, :cond_d

    .line 227
    .line 228
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfh$zzc;->zzj()Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    if-nez v10, :cond_c

    .line 233
    .line 234
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfh$zzc;->zzh()Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-nez v10, :cond_9

    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzg()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    const-string v10, "No string or number filter defined. property"

    .line 261
    .line 262
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_4

    .line 266
    .line 267
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzh()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zznm;->F(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    if-eqz v10, :cond_b

    .line 276
    .line 277
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzh()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfh$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzfh$zzd;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zznm;->F(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v11

    .line 289
    if-nez v11, :cond_a

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_a
    :try_start_1
    new-instance v11, Ljava/math/BigDecimal;

    .line 293
    .line 294
    invoke-direct {v11, v10}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-wide/16 v12, 0x0

    .line 298
    .line 299
    invoke-static {v11, v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzab;->e(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzfh$zzd;D)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    :catch_1
    :goto_3
    invoke-static {v6, v9}, Lcom/google/android/gms/measurement/internal/zzab;->c(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    goto :goto_4

    .line 308
    :cond_b
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzg()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzh()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    const-string v11, "Invalid user property value for Numeric number filter. property, value"

    .line 333
    .line 334
    invoke-virtual {v8, v11, v9, v10}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzh()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfh$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzfh$zzf;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 347
    .line 348
    .line 349
    move-result-object v10

    .line 350
    invoke-static {v6, v8, v10}, Lcom/google/android/gms/measurement/internal/zzab;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfh$zzf;Lcom/google/android/gms/measurement/internal/zzgb;)Ljava/lang/Boolean;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-static {v6, v9}, Lcom/google/android/gms/measurement/internal/zzab;->c(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    goto :goto_4

    .line 359
    :cond_d
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzg()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    const-string v10, "User property has no value, property"

    .line 380
    .line 381
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    :goto_4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    if-nez v6, :cond_e

    .line 393
    .line 394
    const-string v8, "null"

    .line 395
    .line 396
    goto :goto_5

    .line 397
    :cond_e
    move-object v8, v6

    .line 398
    :goto_5
    const-string v9, "Property filter result"

    .line 399
    .line 400
    invoke-virtual {v3, v9, v8}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    if-nez v6, :cond_f

    .line 404
    .line 405
    return v1

    .line 406
    :cond_f
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 407
    .line 408
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzab;->c:Ljava/lang/Boolean;

    .line 409
    .line 410
    if-eqz v7, :cond_10

    .line 411
    .line 412
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-nez v1, :cond_10

    .line 417
    .line 418
    goto :goto_6

    .line 419
    :cond_10
    if-eqz p4, :cond_11

    .line 420
    .line 421
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzf()Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_12

    .line 426
    .line 427
    :cond_11
    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzab;->d:Ljava/lang/Boolean;

    .line 428
    .line 429
    :cond_12
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-eqz v1, :cond_16

    .line 434
    .line 435
    if-eqz v5, :cond_16

    .line 436
    .line 437
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzl()Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-eqz v1, :cond_16

    .line 442
    .line 443
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzd()J

    .line 444
    .line 445
    .line 446
    move-result-wide v5

    .line 447
    if-eqz p1, :cond_13

    .line 448
    .line 449
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 450
    .line 451
    .line 452
    move-result-wide v5

    .line 453
    :cond_13
    if-eqz v0, :cond_14

    .line 454
    .line 455
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzf()Z

    .line 456
    .line 457
    .line 458
    move-result p1

    .line 459
    if-eqz p1, :cond_14

    .line 460
    .line 461
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzg()Z

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    if-nez p1, :cond_14

    .line 466
    .line 467
    if-eqz p2, :cond_14

    .line 468
    .line 469
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    .line 470
    .line 471
    .line 472
    move-result-wide v5

    .line 473
    :cond_14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzg()Z

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    if-eqz p1, :cond_15

    .line 478
    .line 479
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzab;->f:Ljava/lang/Long;

    .line 484
    .line 485
    goto :goto_6

    .line 486
    :cond_15
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzab;->e:Ljava/lang/Long;

    .line 491
    .line 492
    :cond_16
    :goto_6
    return v2
.end method
