.class abstract Lcom/google/android/gms/measurement/internal/zzab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzab;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static b(JLcom/google/android/gms/internal/measurement/zzfh$zzd;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p0, 0x0

    .line 7
    .line 8
    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzab;->e(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzfh$zzd;D)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static c(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eq p0, p1, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p0, 0x0

    .line 14
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfh$zzf;Lcom/google/android/gms/measurement/internal/zzgb;)Ljava/lang/Boolean;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zzj()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_11

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;

    .line 29
    .line 30
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zza()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zzi()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zzg()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;

    .line 57
    .line 58
    if-eq v1, v4, :cond_5

    .line 59
    .line 60
    if-ne v1, v2, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zze()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_1

    .line 74
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zze()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zza()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_6

    .line 83
    .line 84
    move-object p1, v0

    .line 85
    goto :goto_3

    .line 86
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzf;->zzf()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz v3, :cond_7

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_8

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Ljava/lang/String;

    .line 117
    .line 118
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 119
    .line 120
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_8
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    :goto_3
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;

    .line 133
    .line 134
    if-ne v1, v4, :cond_9

    .line 135
    .line 136
    move-object v5, v2

    .line 137
    goto :goto_4

    .line 138
    :cond_9
    move-object v5, v0

    .line 139
    :goto_4
    sget-object v6, Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzfh$zzf$zza;

    .line 140
    .line 141
    if-ne v1, v6, :cond_a

    .line 142
    .line 143
    if-eqz p1, :cond_11

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_b

    .line 150
    .line 151
    goto/16 :goto_7

    .line 152
    .line 153
    :cond_a
    if-nez v2, :cond_b

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_b
    if-nez v3, :cond_d

    .line 157
    .line 158
    if-ne v1, v4, :cond_c

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_c
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 162
    .line 163
    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    :cond_d
    :goto_5
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzv;->a:[I

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    aget v1, v4, v1

    .line 174
    .line 175
    packed-switch v1, :pswitch_data_0

    .line 176
    .line 177
    .line 178
    goto :goto_7

    .line 179
    :pswitch_0
    if-nez p1, :cond_e

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_e
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    :pswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    return-object p0

    .line 200
    :pswitch_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    return-object p0

    .line 209
    :pswitch_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0

    .line 218
    :pswitch_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    return-object p0

    .line 227
    :pswitch_5
    if-nez v5, :cond_f

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_f
    if-eqz v3, :cond_10

    .line 231
    .line 232
    const/4 p1, 0x0

    .line 233
    goto :goto_6

    .line 234
    :cond_10
    const/16 p1, 0x42

    .line 235
    .line 236
    :goto_6
    :try_start_0
    invoke-static {v5, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 249
    .line 250
    .line 251
    move-result-object p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    return-object p0

    .line 253
    :catch_0
    if-eqz p2, :cond_11

    .line 254
    .line 255
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    const-string p1, "Invalid regular expression in REGEXP audience filter. expression"

    .line 260
    .line 261
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_11
    :goto_7
    return-object v0

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzfh$zzd;D)Ljava/lang/Boolean;
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zzh()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzfh$zzd$zzb;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfh$zzd$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzfh$zzd$zzb;

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzfh$zzd$zzb;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfh$zzd$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzfh$zzd$zzb;

    .line 26
    .line 27
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zzl()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_13

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zzk()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zzi()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzfh$zzd$zzb;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzfh$zzd$zzb;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-ne v3, v2, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zzf()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zznm;->F(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_13

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zze()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zznm;->F(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_3

    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_3
    :try_start_0
    new-instance v3, Ljava/math/BigDecimal;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zzf()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v4, Ljava/math/BigDecimal;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zze()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    move-object p1, v3

    .line 102
    move-object v3, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zzd()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zznm;->F(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_5

    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :cond_5
    :try_start_1
    new-instance v3, Ljava/math/BigDecimal;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfh$zzd;->zzd()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .line 124
    .line 125
    move-object p1, v1

    .line 126
    move-object v4, p1

    .line 127
    :goto_0
    if-ne v0, v2, :cond_6

    .line 128
    .line 129
    if-nez p1, :cond_7

    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :cond_6
    if-eqz v3, :cond_13

    .line 134
    .line 135
    :cond_7
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzv;->b:[I

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    aget v0, v2, v0

    .line 142
    .line 143
    const/4 v2, 0x0

    .line 144
    const/4 v5, 0x1

    .line 145
    if-eq v0, v5, :cond_11

    .line 146
    .line 147
    const/4 v6, 0x2

    .line 148
    if-eq v0, v6, :cond_f

    .line 149
    .line 150
    const/4 v7, 0x3

    .line 151
    if-eq v0, v7, :cond_b

    .line 152
    .line 153
    const/4 p2, 0x4

    .line 154
    if-eq v0, p2, :cond_8

    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_8
    if-nez p1, :cond_9

    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_9
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-ltz p1, :cond_a

    .line 167
    .line 168
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    if-gtz p0, :cond_a

    .line 173
    .line 174
    move v2, v5

    .line 175
    :cond_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :cond_b
    if-eqz v3, :cond_13

    .line 181
    .line 182
    const-wide/16 v0, 0x0

    .line 183
    .line 184
    cmpl-double p1, p2, v0

    .line 185
    .line 186
    if-eqz p1, :cond_d

    .line 187
    .line 188
    new-instance p1, Ljava/math/BigDecimal;

    .line 189
    .line 190
    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 191
    .line 192
    .line 193
    new-instance v0, Ljava/math/BigDecimal;

    .line 194
    .line 195
    invoke-direct {v0, v6}, Ljava/math/BigDecimal;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-lez p1, :cond_c

    .line 211
    .line 212
    new-instance p1, Ljava/math/BigDecimal;

    .line 213
    .line 214
    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 215
    .line 216
    .line 217
    new-instance p2, Ljava/math/BigDecimal;

    .line 218
    .line 219
    invoke-direct {p2, v6}, Ljava/math/BigDecimal;-><init>(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    if-gez p0, :cond_c

    .line 235
    .line 236
    move v2, v5

    .line 237
    :cond_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    return-object p0

    .line 242
    :cond_d
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    if-nez p0, :cond_e

    .line 247
    .line 248
    move v2, v5

    .line 249
    :cond_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    return-object p0

    .line 254
    :cond_f
    if-eqz v3, :cond_13

    .line 255
    .line 256
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    if-lez p0, :cond_10

    .line 261
    .line 262
    move v2, v5

    .line 263
    :cond_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    return-object p0

    .line 268
    :cond_11
    if-eqz v3, :cond_13

    .line 269
    .line 270
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    if-gez p0, :cond_12

    .line 275
    .line 276
    move v2, v5

    .line 277
    :cond_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    return-object p0

    .line 282
    :catch_0
    :cond_13
    :goto_1
    return-object v1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method
