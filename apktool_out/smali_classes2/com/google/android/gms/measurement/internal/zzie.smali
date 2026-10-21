.class final Lcom/google/android/gms/measurement/internal/zzie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzn;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzhs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhs;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzie;->b:Lcom/google/android/gms/measurement/internal/zzn;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzie;->e:Lcom/google/android/gms/measurement/internal/zzhs;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzie;->e:Lcom/google/android/gms/measurement/internal/zzhs;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhs;->a:Lcom/google/android/gms/measurement/internal/zznd;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->L()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhh;->zzt()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->M()V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzie;->b:Lcom/google/android/gms/measurement/internal/zzn;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzon;->zza()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/16 v5, 0x64

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->M0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 40
    .line 41
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    iget v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->J:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v4, v5

    .line 51
    :goto_0
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->E:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v6, v4}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zziq;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zznd;->A(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string v8, "Setting consent, package, consent"

    .line 70
    .line 71
    invoke-virtual {v7, v8, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhh;->zzt()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->M()V

    .line 82
    .line 83
    .line 84
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznd;->B:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v7, v3, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzc(Lcom/google/android/gms/measurement/internal/zziq;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zznd;->I(Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzon;->zza()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->M0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 116
    .line 117
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_4

    .line 122
    .line 123
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->K:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzax;->f:Lcom/google/android/gms/measurement/internal/zzax;

    .line 130
    .line 131
    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzax;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-nez v6, :cond_4

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    const-string v7, "Setting DMA consent. package, consent"

    .line 146
    .line 147
    invoke-virtual {v6, v7, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhh;->zzt()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->M()V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzon;->zza()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznd;->C:Ljava/util/HashMap;

    .line 165
    .line 166
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->b:Ljava/lang/String;

    .line 167
    .line 168
    if-eqz v3, :cond_3

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->Q0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_3

    .line 181
    .line 182
    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/zznd;->b(Ljava/lang/String;)Landroid/os/Bundle;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzax;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzax;->zzc()Lcom/google/android/gms/measurement/internal/zzip;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v6, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v3, v10, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/zznd;->b(Ljava/lang/String;)Landroid/os/Bundle;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzax;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzax;->zzc()Lcom/google/android/gms/measurement/internal/zzip;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhh;->zzt()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->M()V

    .line 224
    .line 225
    .line 226
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzip;->f:Lcom/google/android/gms/measurement/internal/zzip;

    .line 227
    .line 228
    if-ne v2, v4, :cond_4

    .line 229
    .line 230
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzip;->j:Lcom/google/android/gms/measurement/internal/zzip;

    .line 231
    .line 232
    if-ne v3, v2, :cond_4

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    const-string v3, "Generated _dcu event for"

    .line 243
    .line 244
    invoke-virtual {v2, v3, v10}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    new-instance v2, Landroid/os/Bundle;

    .line 248
    .line 249
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->O()J

    .line 257
    .line 258
    .line 259
    move-result-wide v8

    .line 260
    const/4 v15, 0x0

    .line 261
    const/16 v16, 0x0

    .line 262
    .line 263
    const/4 v11, 0x0

    .line 264
    const/4 v12, 0x0

    .line 265
    const/4 v13, 0x0

    .line 266
    const/4 v14, 0x0

    .line 267
    invoke-virtual/range {v7 .. v16}, Lcom/google/android/gms/measurement/internal/zzan;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzao;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzao;->f:J

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->X:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 278
    .line 279
    invoke-virtual {v5, v10, v6}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    int-to-long v5, v5

    .line 284
    cmp-long v3, v3, v5

    .line 285
    .line 286
    if-gez v3, :cond_2

    .line 287
    .line 288
    const-string v3, "_r"

    .line 289
    .line 290
    const-wide/16 v4, 0x1

    .line 291
    .line 292
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->O()J

    .line 300
    .line 301
    .line 302
    move-result-wide v8

    .line 303
    const/4 v15, 0x0

    .line 304
    const/16 v16, 0x1

    .line 305
    .line 306
    const/4 v11, 0x0

    .line 307
    const/4 v12, 0x0

    .line 308
    const/4 v13, 0x0

    .line 309
    const/4 v14, 0x0

    .line 310
    invoke-virtual/range {v7 .. v16}, Lcom/google/android/gms/measurement/internal/zzan;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzao;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzao;->f:J

    .line 323
    .line 324
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    const-string v5, "_dcu realtime event count"

    .line 329
    .line 330
    invoke-virtual {v4, v5, v10, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    :cond_2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznd;->G:Lcom/google/android/gms/measurement/internal/zzng;

    .line 334
    .line 335
    const-string v3, "_dcu"

    .line 336
    .line 337
    invoke-interface {v1, v10, v3, v2}, Lcom/google/android/gms/measurement/internal/zzns;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_3
    invoke-virtual {v6, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1, v10, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;)V

    .line 349
    .line 350
    .line 351
    :cond_4
    return-void
.end method
