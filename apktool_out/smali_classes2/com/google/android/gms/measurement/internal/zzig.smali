.class final Lcom/google/android/gms/measurement/internal/zzig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzbf;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzn;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzhs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhs;Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzig;->b:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzig;->e:Lcom/google/android/gms/measurement/internal/zzn;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzig;->f:Lcom/google/android/gms/measurement/internal/zzhs;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzig;->f:Lcom/google/android/gms/measurement/internal/zzhs;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzig;->b:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzbf;->b:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "_cmp"

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzhs;->a:Lcom/google/android/gms/measurement/internal/zznd;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzbf;->e:Lcom/google/android/gms/measurement/internal/zzba;

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzba;->zza()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->b:Landroid/os/Bundle;

    .line 29
    .line 30
    const-string v4, "_cis"

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v4, "referrer broadcast"

    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    const-string v4, "referrer API"

    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v4, "Event has been filtered "

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbf;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzbf;

    .line 70
    .line 71
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzbf;->f:Ljava/lang/String;

    .line 72
    .line 73
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzbf;->j:J

    .line 74
    .line 75
    const-string v7, "_cmpx"

    .line 76
    .line 77
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzbf;->e:Lcom/google/android/gms/measurement/internal/zzba;

    .line 78
    .line 79
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    .line 80
    .line 81
    .line 82
    move-object v1, v6

    .line 83
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzbf;->b:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzig;->e:Lcom/google/android/gms/measurement/internal/zzn;

    .line 90
    .line 91
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzn;->b:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzgy;->zzl(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzhs;->d(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const-string v7, "EES config found for"

    .line 112
    .line 113
    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_4

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgy;->j:Lp/p;

    .line 129
    .line 130
    invoke-virtual {v4, v6}, Lp/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzb;

    .line 135
    .line 136
    :goto_1
    if-nez v4, :cond_5

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v3, "EES not loaded for"

    .line 147
    .line 148
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzhs;->d(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzp()Lcom/google/android/gms/measurement/internal/zznm;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzbf;->e:Lcom/google/android/gms/measurement/internal/zzba;

    .line 160
    .line 161
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzba;->zzb()Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    const/4 v6, 0x1

    .line 169
    invoke-static {v7, v6}, Lcom/google/android/gms/measurement/internal/zznm;->n(Landroid/os/Bundle;Z)Ljava/util/HashMap;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzit;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    if-nez v7, :cond_6

    .line 178
    .line 179
    move-object v7, v2

    .line 180
    :cond_6
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzad;

    .line 181
    .line 182
    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzbf;->j:J

    .line 183
    .line 184
    invoke-direct {v8, v7, v9, v10, v6}, Lcom/google/android/gms/internal/measurement/zzad;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Lcom/google/android/gms/internal/measurement/zzad;)Z

    .line 188
    .line 189
    .line 190
    move-result v6
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzc; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_2

    .line 192
    :catch_0
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 201
    .line 202
    const-string v8, "EES error. appId, eventName"

    .line 203
    .line 204
    invoke-virtual {v6, v8, v7, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    const/4 v6, 0x0

    .line 208
    :goto_2
    if-nez v6, :cond_7

    .line 209
    .line 210
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    const-string v4, "EES was not applied to event"

    .line 219
    .line 220
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzhs;->d(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzb;->zzd()Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-eqz v6, :cond_8

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const-string v6, "EES edited event"

    .line 242
    .line 243
    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzp()Lcom/google/android/gms/measurement/internal/zznm;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzb;->zza()Lcom/google/android/gms/internal/measurement/zzac;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzac;->zzb()Lcom/google/android/gms/internal/measurement/zzad;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zznm;->h(Lcom/google/android/gms/internal/measurement/zzad;)Lcom/google/android/gms/measurement/internal/zzbf;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzhs;->d(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_8
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzhs;->d(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 270
    .line 271
    .line 272
    :goto_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzb;->zzc()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_9

    .line 277
    .line 278
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzb;->zza()Lcom/google/android/gms/internal/measurement/zzac;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzac;->zzc()Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_9

    .line 295
    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzad;

    .line 301
    .line 302
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzad;->zzb()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    const-string v7, "EES logging created event"

    .line 315
    .line 316
    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzp()Lcom/google/android/gms/measurement/internal/zznm;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zznm;->h(Lcom/google/android/gms/internal/measurement/zzad;)Lcom/google/android/gms/measurement/internal/zzbf;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/measurement/internal/zzhs;->d(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 331
    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_9
    :goto_5
    return-void
.end method
